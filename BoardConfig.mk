# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/lge/e730/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_USES_ADRENO_200 := true

TARGET_SPECIFIC_HEADER_PATH := device/lge/e730/include

TARGET_BOOTLOADER_BOARD_NAME := victor

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := WEXT
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_NAME          := "wireless"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/vendor/firmware/fw_bcmdhd.bin nvram_path=/vendor/firmware/nvram.txt config_path=/data/misc/wifi/config iface_name=wlan"
BOARD_WLAN_DEVICE_REV            := bcm4330_b1
WIFI_BAND                        := 802_11_ABG

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
#USE_OPENGL_RENDERER := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := true
#BOARD_USES_QCOM_RESETALL := true
#BOARD_USES_QCOM_RESETALL := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_EGL_CFG := device/lge/e730/egl.cfg

BOARD_USES_QCOM_LIBS := true
#BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true

#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := victor
# AMSS version to use for GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true
#BOARD_OVERLAY_MINIFICATION_LIMIT := 2

BOARD_USES_SECURECLOCK := true

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=ttyMSM1 androidboot.hardware=victor
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE)

BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGE_SIZE := 4096

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p17: 00040000 00000200 "misc"
#mmcblk0p21: 0087f400 00000200 "recovery"
#mmcblk0p22: 00400000 00000200 "boot"
#mmcblk0p25: 22dffe00 00000200 "system"
#mmcblk0p27: 12bffe00 00000200 "cache"
#mmcblk0p26: 496ffe00 00000200 "userdata"
#mmcblk0p28: 014bfe00 00000200 "devlog"
#mmcblk0p29: 00040000 00000200 "pdata"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_PREBUILT_KERNEL := device/lge/e730/prebuilt/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := $(TARGET_PREBUILT_KERNEL)

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/e730/recovery/graphics.c

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
