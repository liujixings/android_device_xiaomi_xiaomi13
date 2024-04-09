# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from Xiaomi13 device
$(call inherit-product, device/xiaomi/xiaomi13/device.mk)

# Inherit from Gapps
# $(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := xiaomi13
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := xiaomi13
PRODUCT_NAME := aosp_xiaomi13

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Next Gen Assistant
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Live Wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Call recording on Google Dialer
TARGET_SUPPORTS_CALL_RECORDING := true

# Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

PRODUCT_NO_CAMERA := true
TARGET_SUPPORTS_OMX_SERVICE := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fuxi_global-user 14 UKQ1.230804.001 V816.0.3.0.UMCMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/fuxi_global/fuxi:14/UKQ1.230804.001/V816.0.3.0.UMCMIXM:user/release-keys

