ifneq ($(filter harmony, $(TARGET_BOOTLOADER_BOARD_NAME)),)
    include $(all-subdir-makefiles)
endif
