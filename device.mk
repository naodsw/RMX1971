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
# Product Configurations
#

# Declare environment variables
DEVICE_PATH := device/realme/RMX1971

# Use the non-open-source parts, if they're present
$(call inherit-product-if-exists, vendor/realme/RMX1971/device-vendor.mk)

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Input
PRODUCT_COPY_FILES += $(DEVICE_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio-keys.kl

# Kernel
$(call inherit-product, $(DEVICE_PATH)-kernel/kernel.mk)

# Rootdir
PRODUCT_PACKAGES += fstab

# Soong namespace
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# VNDK
PRODUCT_SHIPPING_API_LEVEL := 28
PRODUCT_TARGET_VNDK_VERSION := 29
