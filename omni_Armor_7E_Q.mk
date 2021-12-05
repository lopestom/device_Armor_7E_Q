#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := Armor_7E_Q
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from device/ulefone/Armor_7E_Q device
$(call inherit-product, device/ulefone/Armor_7E_Q/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Armor_7E_Q
PRODUCT_NAME := omni_Armor_7E_Q
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := Armor 7E
PRODUCT_MANUFACTURER := Ulefone

PRODUCT_BOARD := Gotron-GQ3083TF5

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Armor_7E_Q \
    PRODUCT_NAME=Armor_7E_Q \
    PRIVATE_BUILD_DESC="full_k79v1_64-user 10 QP1A.190711.020 1594210780 release-keys"

BUILD_FINGERPRINT := Ulefone/Armor_7E_Q/Armor_7E_Q:10/QP1A.190711.020/1594210780:user/release-keys


# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \

