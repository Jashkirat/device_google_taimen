# Copyright (C) 2017-2019 The Dirty Unicorns Project
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

# Include Bootleggers common configuration
include vendor/Bootleggers/config/common_full_phone.mk

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit AOSP device configuration for Taimen
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

# Override AOSP build properties
PRODUCT_NAME := bootlegc_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := Google 

TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="taimen" \
    TARGET_DEVICE="taimen" \
    PRIVATE_BUILD_DESC="taimen-user 10 QQ1A.200105.002 6031801 release-keys"

BUILD_FINGERPRINT := "google/taimen/taimen:10/QQ1A.200105.002/6031801:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/taimen/taimen:10/QQ1A.200105.002/6031801:user/release-keys

#$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
#$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)

$(call inherit-product, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product, vendor/googleapps/googleapps.mk)
