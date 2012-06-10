USE_CAMERA_STUB := false

TARGET_PREBUILT_KERNEL := device/malata/smba-common/kernel

TARGET_SPECIFIC_HEADER_PATH := device/malata/smba-common/include

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

PRODUCT_CHARACTERISTICS := tablet
BOARD_USE_SKIA_LCDTEXT := true
SMALLER_FONT_FOOTPRINT := true

#platform
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := harmony

#arhitecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

#audio
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_AUDIO_LEGACY := false

#bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#graphics
BOARD_EGL_CFG := device/malata/smba-common/prebuilt/egl.cfg
BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"

#Custom recovey
BOARD_HAS_SMALL_RECOVERY := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_INITRC := device/malata/smba-common/recovery/init.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/malata/smba-common/recovery/recovery_keys.c

BOARD_KERNEL_BASE := 0x10000000
BOARD_VOLD_MAX_PARTITIONS := 16
BOARD_PAGE_SIZE := 0x00000800
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true

#BOARD_UMS_LUNFILE               := "/sys/devices/platform/fsl-tegra-udc/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/fsl-tegra-udc/gadget/lun0/file"
BOARD_SDCARD_INTERNAL_DEVICE    := /dev/block/mmcblk0p7

TARGET_OTA_ASSERT_SKIP := true