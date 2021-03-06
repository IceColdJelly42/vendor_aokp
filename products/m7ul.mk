# Inherit device configuration
$(call inherit-product, device/htc/m7ul/full_m7ul.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := m7ul

# Device naming
PRODUCT_DEVICE := m7ul
PRODUCT_NAME := icecold_m7ul
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC


# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="htc_europe/m7/m7:4.1.2/JZO54K/177101.12:user/release-keys" PRIVATE_BUILD_DESC="1.29.401.12 CL177101 release-keys"

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip
