#
# Copyright (C) 2011 The Android Open-Source Project
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
#

# Audio Options
USE_PROPRIETARY_AUDIO_EXTENSIONS := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := false
BOARD_USES_TINY_AUDIO_HW := false

# inherit from the proprietary version
-include vendor/sony/tsx03/BoardConfigVendor.mk

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Build kernel from source
TARGET_KERNEL_SOURCE := kernel/sony/tegra
TARGET_KERNEL_CONFIG := cyanogen_tegra_tsx03_defconfig

# Board naming
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := tsx03

# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_TLS_REGISTER := true

NEED_WORKAROUND_CORTEX_A9_745320 := true

# Boot/Recovery image settings
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE :=

# EGL settings
BOARD_EGL_CFG := device/sony/tsx03/configs/egl.cfg
USE_OPENGL_RENDERER := true

# Misc display settings
BOARD_USE_SKIA_LCDTEXT := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true

# Support for dock battery
#TARGET_HAS_DOCK_BATTERY := true

# Wifi related defines
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#WPA_SUPPLICANT_VERSION      := VER_0_8_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_HOSTAPD_DRIVER        := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
#BOARD_WLAN_DEVICE           := bcmdhd
#WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/bcm4330/fw_bcmdhd.bin"
#WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/bcm4330/fw_bcmdhd_apsta.bin"
#WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/bcm4330/fw_bcmdhd_p2p.bin"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29850022707
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true


# Custom Tools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/sony/tsx03/releasetools/tsx03_ota_from_target_files

# Recovery Options
#BOARD_CUSTOM_BOOTIMG_MK := device/sony/tsx03/custombootimg.mk
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_SDCARD_INTERNAL := true
