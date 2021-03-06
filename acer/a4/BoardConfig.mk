USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/acer/a4/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno205
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := paso
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_MODULE_PATH          := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME          := ar6000
BOARD_WLAN_DEVICE                := ath6kl

BOARD_PROVIDES_LIBRIL := true

BOARD_HAVE_BLUETOOTH     := true
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true
BOARD_VENDOR_USE_AKMD := akm8975

#make touchscreen work without actual kernel modification
BOARD_USE_LEGACY_TOUCHSCREEN:= true

BOARD_VENDOR_QCOM_AMSS_VERSION := 1200
BOARD_USES_QCOM_HARDWARE       := true
BOARD_USES_QCOM_LIBS	       := true
BOARD_USES_QCOM_LIBRPC         := true
BOARD_USES_QCOM_GPS            := true
BOARD_USE_QCOM_PMEM            := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

#EGL configuration
BOARD_EGL_CFG := device/acer/a4/prebuilt/egl.cfg
BOARD_USES_ADRENO_200 := true
USE_OPENGL_RENDERER := true

TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_HAVE_BYPASS := true
COMMON_GLOBAL_CFLAGS += -DBYPASS_OFFSET

TARGET_USES_GENLOCK := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_FORCE_CPU_UPLOAD := true
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS -DREFRESH_RATE=60 

BOARD_NO_RGBX_8888 := true
#for accelerated browsing
ENABLE_WTF_USE_ACCELERATED_COMPOSITING := true

#camera
BOARD_CAMERA_USE_GETBUFFERINFO := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
#BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := paso
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

TARGET_SPECIFIC_HEADER_PATH := device/acer/a4/include

#kernel&recovery base
BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE    := 0x20000000

TARGET_PREBUILT_KERNEL := device/acer/a4/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

# Definition required for Legacy USB storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
