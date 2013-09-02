# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

TARGET_SPECIFIC_HEADER_PATH := device/samsung/amazing_cdma/include

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB:= true
#BOARD_USE_FROYO_LIBCAMERA := true
COPYBIT_MSM7K := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_LEGACY

TARGET_BOARD_PLATFORM := msm7x27a
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_ARCH_VARIANT_FPU := vfpv3

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
# Removed -mtune=cortex-a5

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := amazing-cdma
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

# assert
TARGET_OTA_ASSERT_DEVICE := amazing-cdma,SCH-S738C

TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_USE_SOFTWARE_AUDIO_AAC := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true
BOARD_CUSTOM_BLUEDROID := ../../../device/samsung/amazing_cdma/bluedroid/bluetooth.c
BOARD_FORCE_STATIC_A2DP := true
HAS_BCM20780 := true
BOARD_GLOBAL_CFLAGS += -DHAS_BCM20780

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm2049

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
BOARD_WLAN_DEVICE           := ar6000
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := ar6000

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
BOARD_USE_SCREENCAP:= true
BOARD_MOBILEDATA_INTERFACE_NAME:= "pdp0"

# OpenGL drivers config file path
BOARD_EGL_CFG := device/samsung/amazing_cdma/egl.cfg

TARGET_PREBUILT_KERNEL := device/samsung/amazing_cdma/kernel
TARGET_KERNEL_SOURCE := kernel/samsung/amazing
TARGET_KERNEL_CONFIG := amazing_cdma_00_defconfig

# No fallback font by default (space savings)
#NO_FALLBACK_FONT:=true

BOARD_GPS_LIBRARIES := libloc_api
BOARD_GPS_NEEDS_XTRA := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_GPS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := false
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_USES_GENLOCK := true

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := amazing-cdma
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_PAGE_SIZE := 0x00001000
BOARD_FORCE_RAMDISK_ADDRESS := 0X01300000

TARGET_PROVIDES_LIBAUDIO := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/gadget/lun"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

BOARD_CUSTOM_USB_CONTROLLER := ../../device/samsung/amazing_cdma/UsbController.cpp

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true 

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE :=12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 979369984
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/amazing_cdma/recovery_kernel
TARGET_RECOVERY_INITRC := device/samsung/amazing_cdma/recovery/recovery.rc
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p23
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
BOARD_HAS_NO_MISC_PARTITON := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true

BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_LDPI_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB565"

# AreaROM Recovery call
#BOARD_AREAROM_RECOVERY := false
#BOARD_VIP_RECOVERY := true

#BOARD_CWM_RECOVERY := false

BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/amazing_cdma/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS           := ../../../device/samsung/amazing_cdma/recovery/graphics.c

# TWRP
DEVICE_RESOLUTION := 320x480
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
