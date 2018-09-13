# video seccomp policy files
-include device/qcom/msm8996/seccomp/seccomp.mk

# etc files
-include device/qcom/msm8996/etc/etc.mk

ifeq ($(TARGET_ENABLE_QC_AV_ENHANCEMENTS), true)
	-include device/qcom/msm8996/media/media.mk
endif 

# Sensor HAL conf file
-include device/qcom/msm8996/sensors/sensors.mk

# Frameworks files
-include device/qcom/msm8996/board/framework-copy.mk


