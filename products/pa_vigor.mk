# Copyright (C) 2012 ParanoidAndroid Project
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
ifeq (pa_vigor,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_vigor

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/htc/vigor/vigor.mk)

# inherit from vigor
-include vendor/htc/vigor/BoardConfigVendor.mk

# inherit from msm8660-common
-include device/htc/vigor/BoardConfigCommon.mk

# CDMA APN list
TARGET_RADIO_TYPE := cdma

# Include CM extras
EXTRA_CM_PACKAGES ?= true

# Override AOSP build properties
PRODUCT_NAME := pa_vigor
PRODUCT_BRAND := HTC
PRODUCT_MODEL := ADR6425LVW
PRODUCT_DEVICE := vigor
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vigor BUILD_ID=IML74K BUILD_FINGERPRINT="verizon_wwe/htc_vigor/vigor:4.0.3/IML74K/570011.14:user/release-keys" PRIVATE_BUILD_DESC="4.05.605.14 CL570011 release-keys"

# Include ParanoidAndroid repos configuration
include vendor/pa/config/pa_addons.mk

endif
