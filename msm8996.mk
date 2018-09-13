$(call inherit-product, device/qcom/msm8996/board/device.mk)
$(call inherit-product, device/qcom/msm8996/board/prop.mk)
$(call inherit-product, device/qcom/msm8996/board/product-packages.mk)
$(call inherit-product, device/qcom/msm8996/board/product-copy.mk)

PRODUCT_NAME := msm8996
PRODUCT_DEVICE := msm8996
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus A3000
PRODUCT_MANUFACTURER := OnePlus

$(call inherit-product-if-exists, vendor/oneplus/prebuilt.mk)
$(call inherit-product-if-exists, device/qcom/msm8996/device-vendor.mk)
