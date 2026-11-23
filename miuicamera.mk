#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

CAMERA_PACKAGE_NAME := com.android.camera

# Overlays
PRODUCT_PACKAGES += \
    MiuiCameraOverlayLeicaed

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/camera/configs/permissions/default-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-miuicamera.xml \
    vendor/xiaomi/camera/configs/permissions/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    vendor/xiaomi/camera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# The base fuxi vendor properties already select the Xiaomi HAL and allow com.android.camera.
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera

$(call inherit-product, vendor/xiaomi/camera/camera-vendor.mk)
