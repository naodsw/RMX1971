#
# Copyright 2021, Naufal Altaf <naodesuyo@outlook.com>
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

# Environment variables
DEVICE_PATH := device/realme/RMX1971
PRODUCT_TARGET_VNDK_VERSION := 29

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.oppo.compat

# Inherit dalvik configurations (4GB)
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Initial API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Input
PRODUCT_COPY_FILES += $(DEVICE_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio-keys.kl

# Kernel
$(call inherit-product, $(DEVICE_PATH)-kernel/device-kernel.mk)

# Lights
PRODUCT_PACKAGES += android.hardware.light@2.0-service.rmx1971

# Overlay
PRODUCT_PACKAGES += RMX1971Frameworks

# QTI components
TARGET_BOARD_PLATFORM := sdm710
TARGET_COMMON_QTI_COMPONENTS += all

# Ramdisk
PRODUCT_PACKAGES += fstab

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    $(DEVICE_PATH)-kernel \
    $(DEVICE_PATH)-sepolicy

# Use the non-open-source parts, if they're present
$(call inherit-product-if-exists, vendor/realme/RMX1971/device-vendor.mk)
