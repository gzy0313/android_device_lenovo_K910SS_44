## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := K910L_43

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/K910L_43/device_K910L_43.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := K910L_43
PRODUCT_NAME := cm_K910L_43
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := K910L_43
PRODUCT_MANUFACTURER := Lenovo
