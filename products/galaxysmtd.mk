# Inherit AOSP device configuration for galaxysmtd
$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# galaxysmtd Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/galaxysmtd

# Setup device specific product configuration
PRODUCT_NAME := aokp_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxysmtd
PRODUCT_MODEL := GT-I9000
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"

# galaxysmtd specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
