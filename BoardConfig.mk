#
# Copyright 2021 Naufal Altaf <naodesuyo@outlook.com>
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

#
# Board Configurations
#

# Declare environment variables
DEVICE_PATH := device/realme/RMX1971
BUILD_BROKEN_DUP_RULES := true

# Use the non-open-source parts, if they're present
-include vendor/realme/RMX1971/BoardConfigVendor.mk

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9

# Assert
TARGET_OTA_ASSERT_DEVICE := RMX1971,RMX1971CN

# Board
TARGET_BOARD_PLATFORM := sdm710
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm710
TARGET_NO_BOOTLOADER := true

# Hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true

# Kernel
ifeq ($(TARGET_NO_KERNEL),)
include $(DEVICE_PATH)-kernel/BoardConfigKernel.mk
endif

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10737418240

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_PRODUCT := system/product

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# SEPolicy
include $(DEVICE_PATH)-sepolicy/sepolicy.mk
