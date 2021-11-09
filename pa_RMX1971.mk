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

# Inherit full target configurations
$(call inherit-product, device/realme/RMX1971/full_RMX1971.mk)

# Inherit common AOSPA configurations
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Target definitions
PRODUCT_NAME := pa_RMX1971
TARGET_DISABLES_GAPPS := true
