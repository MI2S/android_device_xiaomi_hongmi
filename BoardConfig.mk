USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/xiaomi/hongmi/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := mt6589
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true

# bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := hongmi

# Kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/hongmi/kernel
BOARD_KERNEL_CMDLINE := console=ttyMT3,921600n1 vmalloc=530M slub_max_order=0 lcm=1-r61308_dsi_vdo fps=5363 pl_t=3710 lk_t=2388 printk.disable_uart=1 boot_reason=4
BOARD_KERNEL_BASE := 0x10008000
BOARD_KERNEL_PAGESIZE := 2048

# EGL
BOARD_EGL_CFG := device/xiaomi/hongmi/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Ramdisk
TARGET_PROVIDES_INIT_RC := true

# Prebuilt image layouts
DEVICE_BASE_RECOVERY_IMAGE := device/xiaomi/hongmi/mtk-tools/recovery.img

# recovery specific
TARGET_RECOVERY_INITRC := device/xiaomi/hongmi/ramdisk/init.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/xiaomi/hongmi/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := device/xiaomi/hongmi/recovery.fstab
CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
CWM_EMMC_BOOT_DEVICE_SIZE := 6291456 #6M
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
CWM_EMMC_RECOVERY_DEVICE_SIZE := 6291456 #6M
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 1280x720
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

# partition sizes get from /proc/emmc on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456 #6M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456 #6M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681907200 #650M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648 #2048M
BOARD_FLASH_BLOCK_SIZE := 131072 #128K
# Telephony
BOARD_RIL_CLASS := ../../../device/xiaomi/hongmi/ril/
