PRODUCT_NAME := msm8996
PRODUCT_DEVICE := msm8996
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus A3000
PRODUCT_MANUFACTURER := OnePlus
DEVICE_TREE := $(LOCAL_DIR)

$(call inherit-product, $(DEVICE_TREE)/board/device.mk)
$(call inherit-product, $(DEVICE_TREE)/board/prop.mk)
$(call inherit-product, $(DEVICE_TREE)/board/product-packages.mk)
$(call inherit-product, $(DEVICE_TREE)/board/product-copy.mk)
$(call inherit-product-if-exists, vendor/oneplus/prebuilt.mk)
$(call inherit-product-if-exists, $(DEVICE_TREE)/device-vendor.mk)
