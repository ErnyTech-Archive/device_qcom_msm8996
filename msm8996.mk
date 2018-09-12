$(call inherit-product, device/qcom/msm8998/board/device.mk)
$(call inherit-product, device/qcom/msm8998/board/product-packages.mk)
$(call inherit-product, device/qcom/msm8998/board/product-copy.mk)

PRODUCT_NAME := msm8996
PRODUCT_DEVICE := msm8996
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus A3000
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=OnePlus/OnePlus3/OnePlus3:8.0.0/OPR1.170623.032/1808161403:user/release-keys

$(call inherit-product-if-exists, vendor/oneplus/prebuilt.mk)
$(call inherit-product-if-exists, device/qcom/msm8996/device-vendor.mk)
