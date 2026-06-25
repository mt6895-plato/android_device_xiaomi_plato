#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from plato device
$(call inherit-product, device/xiaomi/plato/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#################### AxionOS Stuff ####################

TARGET_DISABLE_EPPE := true # Disables Enforced Prebuilt Package Exemption
TARGET_ENABLE_BLUR := true 
TARGET_INCLUDE_AXFX := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120

AXION_CAMERA_REAR_INFO := 108,8,2
AXION_CAMERA_FRONT_INFO := 20

AXION_MAINTAINER := archcloudy
AXION_PROCESSOR := Dimensity_8100-Ultra

#######################################################

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := plato
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_MODEL := 22071212AG
PRODUCT_NAME := lineage_plato
PRODUCT_SYSTEM_NAME := plato_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Xiaomi/plato/plato:15/AP3A.240905.015.A2/OS2.0.214.0.VLQMIXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)