# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common TWRP/OFox stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from the native factory device path configuration
$(call inherit-product, device/motorola/genevn/device.mk)

PRODUCT_DEVICE := genevn
PRODUCT_NAME := twrp_genevn
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola moto g stylus 5g (2023)
PRODUCT_MANUFACTURER := motorola
PRODUCT_RELEASE_NAME := Moto G Stylus 5G 2023

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Hardcoded for your exact live Android 14 System configuration
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=genevn_g \
    PRIVATE_BUILD_DESC="genevn_g-user 14 U1TGNS34.42-86-2-32 release-keys"

BUILD_FINGERPRINT := motorola/genevn_g/genevn:14/U1TGNS34.42-86-2-32:user/release-keys
