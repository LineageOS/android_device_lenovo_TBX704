#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true
TW_THEME := landscape_hdpi
TW_TARGET_USES_QCOM_BSP := true
TW_NEW_ION_HEAP := true
# If you change TW_HWROTATION, you'll have to either use:
#   RECOVERY_TOUCHSCREEN_SWAP_XY := true
#   RECOVERY_TOUCHSCREEN_FLIP_X := true
# Or make the same change in the DTS (preferable):
#   synaptics,swap-axes;
#   synaptics,y-flip;
TW_HWROTATION := 90
# Encryption support
TW_INCLUDE_CRYPTO := true
# Asian region languages
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_BRIGHTNESS := 128

# Unshare the TWRP-specific recovery/root/etc/twrp.fstab
# and the AOSP rootdir/etc/fstab.qcom files. TWRP will give
# precedence to reading its own file if present.

# $(TARGET_RECOVERY_DEVICE_DIRS) are copied directly
# to $(TARGET_RECOVERY_ROOT_OUT) with cp -rf.
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)/twrp
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.qcom

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# For USB OTG
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

TARGET_RECOVERY_QCOM_RTC_FIX := true

TW_INTERNAL_STORAGE_PATH := /sdcard
TW_EXTERNAL_STORAGE_PATH := /sdcard1


