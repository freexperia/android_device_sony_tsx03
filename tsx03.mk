# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit common language setup
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit tsx03 vendor setup
$(call inherit-product-if-exists, vendor/sony/tsx03/tsx03-vendor.mk)

# Path to overlay files
DEVICE_PACKAGE_OVERLAYS += device/sony/tsx03/overlay

# Build characteristics setting
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := normal large xlarge hdpi
PRODUCT_AAPT_PREF_CONFIG := xlarge hdpi

# This device has enough space for precise dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

# Extra packages to build for this device
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    audio.a2dp.default \
    audio.usb.default \
    libtinyalsa \
    libaudioutils

# Torch
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Files needed for boot image
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.tsx03.rc:root/init.tsx03.rc \
    $(LOCAL_PATH)/configs/init.tsx03.usb.rc:root/init.tsx03.usb.rc \
    $(LOCAL_PATH)/configs/ueventd.tsx03.rc:root/ueventd.tsx03.rc

# Prebuilt configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/configs/asound.conf:system/etc/asound.conf \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/nvcamera.conf:system/etc/nvcamera.conf \
    $(LOCAL_PATH)/configs/usbspeaker.conf:system/etc/usbspeaker.conf

#    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Input device configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
    $(LOCAL_PATH)/configs/cyttsp-i2c.idc:system/usr/idc/cyttsp-i2c.idc \
    $(LOCAL_PATH)/configs/panjit_touch.idc:system/usr/idc/panjit_touch.idc \
    $(LOCAL_PATH)/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/configs/Bluetooth_00_06_66_42.kl:system/usr/keylayout/Bluetooth_00_06_66_42.kl \
    $(LOCAL_PATH)/configs/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# media files
PRODUCT_COPY_FILES += \
    device/sony/tsx03/configs/media_profiles.xml:system/etc/media_profiles.xml

# GPS configuration
PRODUCT_COPY_FILES += \
    device/sony/tsx03/configs/gps.conf:system/etc/gps.conf

# specific properties
PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.opengles.version=131072 \
    persist.sys.usb.config=mtp,adb

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)

# Device Naming
PRODUCT_NAME := full_tsx03
PRODUCT_DEVICE := tsx03
PRODUCT_BRAND := sony
PRODUCT_MODEL := sony Tablet S
