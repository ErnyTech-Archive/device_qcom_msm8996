ALLOW_MISSING_DEPENDENCIES=true
TARGET_USES_AOSP := true
TARGET_USES_AOSP_FOR_AUDIO := false
TARGET_USES_QCOM_BSP := false

ifeq ($(TARGET_USES_AOSP),true)
TARGET_DISABLE_DASH := true
endif

DEVICE_PACKAGE_OVERLAYS := device/qcom/msm8996/overlay
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

#treble
ENABLE_VENDOR_IMAGE := true
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true

# Disable QTIC until it's brought up in split system/vendor
# configuration to avoid compilation breakage.
ifeq ($(ENABLE_VENDOR_IMAGE), true)
#TARGET_USES_QTIC := false
endif

TARGET_USES_NQ_NFC := false # bring-up hack
BOARD_FRP_PARTITION_NAME :=frp

TARGET_KERNEL_VERSION := 3.18

#QTIC flag
-include $(QCPATH)/common/config/qtic-config.mk

# Add soft home, back and multitask keys
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0

ifneq ($(TARGET_DISABLE_DASH), true)
    PRODUCT_BOOT_JARS += qcmediaplayer
endif


# Enable features in video HAL that can compile only on this platform
TARGET_USES_MEDIA_EXTENSIONS := true

# copy customized media_profiles and media_codecs xmls for msm8996


# Override heap growth limit due to high display density on device
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, device/qcom/common/common64.mk)

#msm8996 platform WLAN Chipset
WLAN_CHIPSET := qca_cld


# system prop for opengles version
#
# 196608 is decimal for 0x30000 to report version 3
# 196609 is decimal for 0x30001 to report version 3.1
# 196610 is decimal for 0x30002 to report version 3.2
PRODUCT_PROPERTY_OVERRIDES  += \
    ro.opengles.version=196610

PRODUCT_BOOT_JARS += tcmiface
PRODUCT_BOOT_JARS += telephony-ext

PRODUCT_BOOT_JARS += qcnvitems
PRODUCT_BOOT_JARS += qcrilhook

ifneq ($(strip $(QCPATH)),)
#PRODUCT_BOOT_JARS += WfdCommon
#PRODUCT_BOOT_JARS += com.qti.dpmframework
#PRODUCT_BOOT_JARS += dpmapi
#PRODUCT_BOOT_JARS += com.qti.location.sdk
#Android oem shutdown hook
#PRODUCT_BOOT_JARS += oem-services
endif

DEVICE_MANIFEST_FILE := device/qcom/msm8996/configs/manifest.xml
DEVICE_MATRIX_FILE   := device/qcom/common/compatibility_matrix.xml
DEVICE_FRAMEWORK_MANIFEST_FILE := device/qcom/msm8996/configs/framework_manifest.xml

# Audio configuration file
-include $(TOPDIR)hardware/qcom/audio/configs/msm8996/msm8996.mk

PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1

# List of AAPT configurations
PRODUCT_AAPT_CONFIG += xlarge large


# Enable logdumpd service only for non-perf bootimage
ifeq ($(findstring perf,$(KERNEL_DEFCONFIG)),)
    ifeq ($(TARGET_BUILD_VARIANT),user)
        PRODUCT_DEFAULT_PROPERTY_OVERRIDES+= \
            ro.logdumpd.enabled=0
    else
        #PRODUCT_DEFAULT_PROPERTY_OVERRIDES+= \
            ro.logdumpd.enabled=1
    endif
else
    PRODUCT_DEFAULT_PROPERTY_OVERRIDES+= \
        ro.logdumpd.enabled=0
endif

TARGET_SUPPORT_SOTER := true

# Defined the locales
PRODUCT_LOCALES += th_TH vi_VN tl_PH hi_IN ar_EG ru_RU tr_TR pt_BR bn_IN mr_IN ta_IN te_IN zh_HK \
        in_ID my_MM km_KH sw_KE uk_UA pl_PL sr_RS sl_SI fa_IR kn_IN ml_IN ur_IN gu_IN or_IN

PRODUCT_PROPERTY_OVERRIDES += rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so

TARGET_MOUNT_POINTS_SYMLINKS := false

# system prop for Bluetooth SOC type
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=rome

# Set this true as ROME which is programmed
# as embedded wipower mode by deafult
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.emb_wp_mode=true \
    ro.vendor.bluetooth.emb_wp_mode=true

#system prop for wipower support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.wipower=true \
    ro.vendor.bluetooth.wipower=true

SDM660_DISABLE_MODULE := true
 
