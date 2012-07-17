$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/malata/smba-common/overlay

include frameworks/native/build/tablet-dalvik-heap.mk

# uses mdpi artwork where available
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_CHARACTERISTICS := tablet
PRODUCT_MANUFACTURER := malata

#HAL
PRODUCT_PACKAGES += \
    camera.tegra \
    audio.a2dp.default \
    audio.primary.tegra \
    libaudioutils \
    sensors.tegra \
    lights.tegra \
    gps.tegra

PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml

PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
    device/malata/smba-common/prebuilt/media_codecs.xml:system/etc/media_codecs.xml \
    device/malata/smba-common/prebuilt/media_profiles.xml:system/etc/media_profiles.xml \
    device/malata/smba-common/prebuilt/audio_policy.conf:system/etc/audio_policy.conf

# Harmony Configs
PRODUCT_COPY_FILES += \
    device/malata/smba-common/prebuilt/init.harmony.rc:root/init.harmony.rc \
    device/malata/smba-common/prebuilt/init.harmony.usb.rc:root/init.harmony.usb.rc \
    device/malata/smba-common/prebuilt/ueventd.harmony.rc:root/ueventd.harmony.rc \
    device/malata/smba-common/prebuilt/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    device/malata/smba-common/prebuilt/nvram.txt:system/etc/wifi/nvram.txt \
    device/malata/smba-common/prebuilt/sysctl.conf:system/etc/sysctl.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# Touchscreen
PRODUCT_COPY_FILES += \
    device/malata/smba-common/prebuilt/at168_touch.idc:system/usr/idc/at168_touch.idc \
    device/malata/smba-common/prebuilt/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Generic
PRODUCT_COPY_FILES += \
   device/malata/smba-common/prebuilt/vold.fstab:system/etc/vold.fstab

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_UTC_DATE=0 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

WIFI_BAND := 802_11_ABG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)
