#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit some common bliss stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Valid for core/full GAPPS (default=true)
#TARGET_USE_GOOGLE_TELEPHONY := false

# GAPPS
WITH_GAPPS := true
TARGET_INCLUDE_GOOGLE_APP := false
TARGET_INCLUDE_GOOGLE_CALCULATOR := true
TARGET_INCLUDE_GOOGLE_CALENDAR := true
TARGET_INCLUDE_GOOGLE_CHROME := true
TARGET_INCLUDE_GOOGLE_DESKCLOCK := false
TARGET_INCLUDE_GOOGLE_DRIVE := false
TARGET_INCLUDE_GMAIL := true
TARGET_INCLUDE_GOOGLE_MAPS := false
TARGET_INCLUDE_GOOGLE_PHOTOS := true
TARGET_INCLUDE_GOOGLE_SETUP := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true

# Alpha internal properties
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_MATLOG := true
TARGET_DEFAULT_ADB_ENABLED := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
ALPHA_MAINTAINER := Arsalan-Zeus
ALPHA_BUILD_TYPE := Official

# Enable extra UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# Set Boot Animination Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_bitra
PRODUCT_DEVICE := bitra
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3370
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RMX3370
PRODUCT_SYSTEM_DEVICE := RE879AL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3370-user 13 TP1A.220905.001 1689675947852 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3370/RE879AL1:13/TP1A.220905.001/R.1204c51_b6a6-99a70:user/release-keys
