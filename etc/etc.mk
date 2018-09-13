PRODUCT_COPY_FILES += device/qcom/msm8996/etc/whitelistedapps.xml:system/etc/whitelistedapps.xml \
                      device/qcom/msm8996/etc/gamedwhitelist.xml:system/etc/gamedwhitelist.xml

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
    device/qcom/msm8996/etc/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf
    
# Powerhint configuration file
PRODUCT_COPY_FILES += \
    device/qcom/msm8996/etc/powerhint.xml:system/etc/powerhint.xml

-include device/qcom/msm8996/etc/wifi/wifi.mk
