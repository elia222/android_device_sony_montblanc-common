TARGET_SPECIFIC_HEADER_PATH := device/sony/montblanc-common/include

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_HAS_NO_MISC_PARTITION := true

# Platform
TARGET_BOARD_PLATFORM := montblanc
TARGET_BOOTLOADER_BOARD_NAME := montblanc

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel information
BOARD_KERNEL_CMDLINE := # This is ignored by sony's bootloader
BOARD_KERNEL_BASE := 0x40200000
BOARD_RECOVERY_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x41200000

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/sony/montblanc-common/config/egl.cfg

TARGET_PROVIDES_LIBLIGHTS := true

# Custom boot
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_CUSTOM_BOOTIMG_MK := device/sony/montblanc-common/custombootimg.mk
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/sony/montblanc-common/releasetools/semc_ota_from_target_files
#BOARD_CUSTOM_GRAPHICS := ../../../device/sony/montblanc-common/recovery/recovery-gfx.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/sony/montblanc-common/recovery/recovery-keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

