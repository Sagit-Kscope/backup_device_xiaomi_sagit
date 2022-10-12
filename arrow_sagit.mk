#
# Copyright (C) 2017-2018 The LineageOS Project
# Copyright (C) 2022 Project Kaleidoscope
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sagit device
$(call inherit-product, device/xiaomi/sagit/device.mk)

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := arrow_sagit
PRODUCT_DEVICE := sagit
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := sagit

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "google/raven/raven:13/TP1A.221005.002/9012097:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.221005.002 9012097 release-keys" \
    TARGET_PRODUCT="sagit"

PRODUCT_PROPERTY_OVERRIDES += ro.build.fingerprint=google/raven/raven:13/TP1A.221005.002/9012097:user/release-keys
