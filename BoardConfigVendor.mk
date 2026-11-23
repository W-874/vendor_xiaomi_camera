# fuxi MiuiCamera prerequisites from the pinned camera module.

TARGET_SYSTEM_PROP += \
    vendor/xiaomi/camera/configs/properties/system.prop \
    vendor/xiaomi/camera/configs/properties/system_camera_fuxi.prop

BOARD_VENDOR_SEPOLICY_DIRS += vendor/xiaomi/camera/sepolicy/vendor
