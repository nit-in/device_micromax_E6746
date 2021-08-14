DEVICE_PATH := device/micromax/E6746

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common pb stuff.
$(call inherit-product, vendor/omni/config/common.mk)


# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := E6746
PRODUCT_NAME := omni_E6746
PRODUCT_BRAND := Micromax
PRODUCT_MODEL := IN 1
PRODUCT_MANUFACTURER := Micromax
PRODUCT_RELEASE_NAME := E6746

# Define Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_TARGET_VNDK_VERSION := 29
PRODUCT_SHIPPING_API_LEVEL := 29


# HACK: Set vendor patch level and build fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.build.fingerprint="Micromax/E6746/E6746:10/QP1A.190711.020/1615426476:user/release-keys"