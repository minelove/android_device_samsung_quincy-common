# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common msm8660
-include device/samsung/msm8660-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8660_SURF

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom usb_id_pin_rework=true no_console_suspend=true androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000
TARGET_KERNEL_SOURCE := kernel/samsung/msm8660-common

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_RECOVERY_SWIPE := true

# Q1 hardware has a rear mic for camcorder
BOARD_HAVE_BACK_MIC_CAMCORDER := true

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

# Preload the boot animation to avoid jerkiness
TARGET_BOOTANIMATION_PRELOAD := true

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p28
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
