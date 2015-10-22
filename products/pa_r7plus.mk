# Copyright (C) 2015 ParanoidAndroid Project
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

# Check for target product

ifeq (pa_r7plus,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xxhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/oppo/r7plus/device.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_r7plus
PRODUCT_DEVICE := r7plus
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := R7plusf
PRODUCT_MANUFACTURER := OPPO

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=OPPO/R7plusf/R7Plusm:5.1.1/LMY47V/1437558400:user/release-keys \
    PRIVATE_BUILD_DESC="msm8916_64-user 5.1.1 LMY47V eng..20150807.023105 dev-keys" \
    TARGET_DEVICE="R7plusf"

endif
