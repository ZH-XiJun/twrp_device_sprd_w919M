#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from w919M device
$(call inherit-product, device/sprd/w919M/device.mk)

PRODUCT_DEVICE := w919M
PRODUCT_NAME := omni_w919M
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := W919M
PRODUCT_MANUFACTURER := sprd

PRODUCT_GMS_CLIENTID_BASE := android-sprd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="w919M-user 4.4.4 KTU84P 703970 test-keys"

BUILD_FINGERPRINT := SPRD/w919M/w919M:4.4.4/KTU84P/703970:user/test-keys
