# Inherit AOSP device configuration for Fire.
$(call inherit-product, device/amazon/blaze/blaze.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/not_so_common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_blaze
PRODUCT_BRAND := amazon
PRODUCT_DEVICE := blaze
PRODUCT_MODEL := Kindle Fire
PRODUCT_MANUFACTURER := amazon
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=blaze PRODUCT_BOARD=omap4sdp BUILD_ID=GRK39F BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cyanogen/overlay/tablet

# Release name and versioning
PRODUCT_RELEASE_NAME := blaze
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

# Inherit an override for versioning to infer different recoveries
# only if it exists; and it should only exist in the twrp branch
$(call inherit-product-if-exists, device/amazon/blaze/releasetools/versions.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip


