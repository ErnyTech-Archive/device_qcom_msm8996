TARGET_USES_AOSP := true
TARGET_USES_AOSP_FOR_AUDIO := false
TARGET_USES_QCOM_BSP := false

ifeq ($(TARGET_USES_AOSP),true)
TARGET_DISABLE_DASH := true
endif

DEVICE_PACKAGE_OVERLAYS := $(DEVICE_TREE)/overlay
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

TARGET_KERNEL_VERSION := 4.19

#QTIC flag
-include $(QCPATH)/common/config/qtic-config.mk

ifneq ($(TARGET_DISABLE_DASH), true)
    PRODUCT_BOOT_JARS += qcmediaplayer
endif

# Enable features in video HAL that can compile only on this platform
TARGET_USES_MEDIA_EXTENSIONS := true

# copy customized media_profiles and media_codecs xmls for msm8996

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, device/qcom/common/common64.mk)

#msm8996 platform WLAN Chipset
WLAN_CHIPSET := qca_cld

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

# Configs
-include $(DEVICE_TREE)/configs/configs.mk

# Audio configuration file
-include $(TOPDIR)hardware/qcom/audio/configs/msm8996/msm8996.mk

# List of AAPT configurations
PRODUCT_AAPT_CONFIG += xlarge large

TARGET_SUPPORT_SOTER := true

# Defined the locales
PRODUCT_LOCALES += th_TH vi_VN tl_PH hi_IN ar_EG ru_RU tr_TR pt_BR bn_IN mr_IN ta_IN te_IN zh_HK \
        in_ID my_MM km_KH sw_KE uk_UA pl_PL sr_RS sl_SI fa_IR kn_IN ml_IN ur_IN gu_IN or_IN

TARGET_MOUNT_POINTS_SYMLINKS := false

SDM660_DISABLE_MODULE := true
 
