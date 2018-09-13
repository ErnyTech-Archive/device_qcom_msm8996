# video seccomp policy files
-include $(DEVICE_TREE)/seccomp/seccomp.mk

# etc files
-include $(DEVICE_TREE)/etc/etc.mk

ifeq ($(TARGET_ENABLE_QC_AV_ENHANCEMENTS), true)
	-include $(DEVICE_TREE)/media/media.mk
endif 

# Sensor HAL conf file
-include $(DEVICE_TREE)/sensors/sensors.mk

# Frameworks files
-include $(LOCAL_DIR)framework-copy.mk


