PRODUCT_COPY_FILES += $(LOCAL_DIR)/whitelistedapps.xml:system/etc/whitelistedapps.xml \
                      $(LOCAL_DIR)/gamedwhitelist.xml:system/etc/gamedwhitelist.xml

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_DIR)/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf
    
# Powerhint configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_DIR)/powerhint.xml:system/etc/powerhint.xml

-include $(LOCAL_DIR)/wifi/wifi.mk
