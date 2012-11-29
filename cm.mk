# Resolution values for bootanimation
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for tsx03.
$(call inherit-product, device/sony/tsx03/full_tsx03.mk)

#
# Setup device specific product configuration.
#
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_tsx03
PRODUCT_BRAND := sony
PRODUCT_DEVICE := tsx03
PRODUCT_MODEL := Sony Tablet S
PRODUCT_MANUFACTURER := sony
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.1.1/JRO03C/US_epad-10.4.4.20-20121026:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.1.1 JRO03C US_epad-10.4.4.20-20121026 release-keys"
