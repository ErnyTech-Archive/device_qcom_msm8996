## BoardConfigVendor.mk
## Qualcomm Technologies proprietary product specific compile-time definitions.
#
DEVICE_PACKAGE_OVERLAYS += vendor/qcom/proprietary/common/msm8996/overlay

#Enable IMS
TARGET_USES_IMS := true
BOARD_USES_QCNE := true

#Enable DPM
BOARD_USES_DPM := true
BOARD_USES_LIBC_WRAPPER := true

#Enable/Disable SCVE
TARGET_SCVE_DISABLED := true
USESECIMAGETOOL := true

## Gensecimage generation of signed apps bootloader
QTI_GENSECIMAGE_MSM_IDS := msm8996

## Use signed image as default
QTI_GENSECIMAGE_SIGNED_DEFAULT := msm8996

CONFIG_EAP_PROXY_MDM_DETECT := true

CONFIG_EAP_PROXY_DUAL_SIM := true
CONFIG_EAP_PROXY_AKA_PRIME := true
BOARD_HAS_ATH_WLAN_AR6320 := true
BOARD_HAS_QCA_BT_ROME := true

FEATURE_QCRIL_UIM_SAP_SERVER_MODE := true

# TODO: Bring-up exception - all modules must be fixed by corresponding teams
INTERNAL_LOCAL_CLANG_EXCEPTION_PROJECTS += \
  $(abspath $(TOPDIR)vendor/qcom/proprietary/gles/adreno200) \
  vendor/qcom/proprietary/gles/adreno200 \
  vendor/qcom/proprietary/fastcv-noship \
  vendor/qcom/proprietary/gps-noship \
  vendor/qcom/proprietary/kernel-tests \
  vendor/qcom/proprietary/mare-noship \
  vendor/qcom/proprietary/mm-camera-lib \
  vendor/qcom/proprietary/mm-camera/mm-camera2/media-controller/modules/imglib \
  vendor/qcom/proprietary/mm-camera/mm-camera2/tests \
  vendor/qcom/proprietary/mm-mux

# TODO: Bring-up exception - all modules must be fixed by corresponding teams
TARGET_CINCLUDES_EXCEPTION_PROJECTS := \
  $(abspath $(TOPDIR)vendor/qcom/proprietary/gles/adreno200) \
  vendor/qcom/proprietary/gles/adreno200 \
  vendor/qcom/proprietary/gps-noship-external \
  vendor/qcom/proprietary/gps-noship \
  disregard/filesystems/mtd-utils
 
possible_cvv_dirs = $(QCPATH)/prebuilt_HY11 $(QCPATH)/prebuilt_HY22 $(QCPATH)/prebuilt_grease
prebuilt_cvv_dirs =  $(wildcard $(possible_cvv_dirs))
ifneq ($(prebuilt_cvv_dirs),)
	ifneq ($(TARGET_BOARD_SUFFIX),)
		$(shell for i in $(prebuilt_cvv_dirs);do echo -e "optional_subdirs = [\n    \"target/product/$(TARGET_BOARD_PLATFORM)$(TARGET_BOARD_SUFFIX)\",\n]" > $$i/Android.bp;done)
	else
		$(shell for i in $(prebuilt_cvv_dirs);do echo -e "optional_subdirs = [\n    \"target/product/$(TARGET_BOARD_PLATFORM)\",\n]" > $$i/Android.bp;done;)
	endif
endif
