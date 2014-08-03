$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lenovo/K910L_43/K910L_43-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/K910L_43/overlay

LOCAL_PATH := device/lenovo/K910L_43
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/recovery/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/ueventd.qcom.rc:recovery/root/ueventd.qcom.rc \
    $(LOCAL_PATH)/recovery/fstab.qcom:recovery/root/fstab.qcom \
    $(LOCAL_PATH)/recovery/init.qcom.usb.rc:recovery/root/init.qcom.usb.rc \
    $(LOCAL_PATH)/recovery/sepolicy:recovery/root/sepolicy \
    $(LOCAL_PATH)/recovery/file_contexts:recovery/root/file_contexts \
    $(LOCAL_PATH)/recovery/property_contexts:recovery/root/property_contexts \
    $(LOCAL_PATH)/recovery/seapp_contexts:recovery/root/seapp_contexts \
    $(LOCAL_PATH)/recovery/charger:recovery/root/charger \
    $(LOCAL_PATH)/recovery/init.usb.rc:recovery/root/init.usb.rc \
    $(LOCAL_PATH)/recovery/ueventd.goldfish.rc:recovery/root/ueventd.goldfish.rc \
    $(LOCAL_PATH)/recovery/init.qcom.class_core.sh:recovery/root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/recovery/init.qcom.class_main.sh:recovery/root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/recovery/init.qcom.early_boot.sh:recovery/root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/recovery/init.qcom.factory.sh:recovery/root/init.qcom.factory.sh \
    $(LOCAL_PATH)/recovery/init.usb.rc:recovery/root/init.usb.rc \
    $(LOCAL_PATH)/recovery/init.qcom.ril.sh:recovery/root/init.qcom.ril.sh \
    $(LOCAL_PATH)/recovery/init.qcom.sh:recovery/root/init.qcom.sh \
    $(LOCAL_PATH)/recovery/init.qcom.syspart_fixup.sh:recovery/root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/recovery/images/charger:recovery/root/res/images/charger \
    $(LOCAL_PATH)/recovery/init.qcom.usb.sh:recovery/root/init.qcom.usb.sh \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_K910L_43
PRODUCT_DEVICE := K910L_43
