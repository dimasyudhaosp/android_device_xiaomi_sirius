#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/sirius/device.mk)

# Inherit some common RR stuff.
RR_BUILDTYPE := Unofficial
BUILD_RR_WALLPAPERS := false
GAPPS := ""
TARGET_FACE_UNLOCK_SUPPORTED := true
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := sirius
PRODUCT_NAME := rr_$(PRODUCT_DEVICE)
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 SE
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

BUILD_FINGERPRINT := "$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)/$(PRODUCT_DEVICE):10/QKQ1.190828.002/V12.5.1.0.QEBCNXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(PRODUCT_DEVICE)-user 10 QKQ1.190828.002 V12.5.1.0.QEBCNXM release-keys" \
    PRODUCT_NAME="$(PRODUCT_DEVICE)" \
    TARGET_DEVICE="$(PRODUCT_DEVICE)"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
