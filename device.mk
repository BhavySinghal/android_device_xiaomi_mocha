#
# Copyright (C) 2014 The CyanogenMod Project
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

PRODUCT_AAPT_CONFIG += xlarge large
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/xiaomi/mocha/mocha-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    device/nvidia/shieldtablet/overlay

PRODUCT_PACKAGES += \
    init.none.rc \
    fstab.mocha \
    init.mocha.rc \
    init.t124_emmc.rc \
    init.t124_sata.rc \
    init.cal.rc \
    init.hdcp.rc \
    init.t124.rc \
    init.tlk.rc \
    init.nv_dev_board.usb.rc \
    power.mocha.rc \
    ueventd.mocha.rc

PRODUCT_COPY_FILES += \
    device/xiaomi/mocha/rootdir/etc/init:root/init \
    device/xiaomi/mocha/rootdir/etc/init.rc:root/init.rc \
    device/xiaomi/mocha/rootdir/sbin/healthd:root/sbin/healthd \
    device/xiaomi/mocha/rootdir/sbin/chargeonlymode:root/sbin/chargeonlymode \
    device/xiaomi/mocha/rootdir/sbin/mdbd:root/sbin/mdbd

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# NVIDIA
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/com.nvidia.graphics.xml:system/etc/permissions/com.nvidia.graphics.xml \
    $(LOCAL_PATH)/permissions/com.nvidia.nvsi.xml:system/etc/permissions/com.nvidia.nvsi.xml \
    $(LOCAL_PATH)/permissions/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    $(LOCAL_PATH)/permissions/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    $(LOCAL_PATH)/permissions/com.nvidia.miracast.xml:system/etc/permissions/com.nvidia.miracast.xml

# idc
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/idc/touch.idc:system/usr/idc/touch.idc \
  $(LOCAL_PATH)/idc/sensor00fn11.idc:system/usr/idc/sensor00fn11.idc

# keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/Vendor_0955_Product_7210.kl:system/usr/keylayout/Vendor_0955_Product_7210.kl

# Media config
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audioConfig_qvoice_icera_pc400.xml:system/etc/audioConfig_qvoice_icera_pc400.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/nvaudio_conf.xml:system/etc/nvaudio_conf.xml \
    $(LOCAL_PATH)/audio/nvaudio_fx.xml:system/etc/nvaudio_fx.xml

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libaudiospdif \
    libtinycompress \
    tinycap \
    tinymix \
    tinyplay \
    xaplay

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/nvcamera.conf:system/etc/nvcamera.conf \
    $(LOCAL_PATH)/camera/model_frontal.xml:system/etc/model_frontal.xml

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

PRODUCT_PACKAGES += \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Light
PRODUCT_PACKAGES += \
    lights.tegra

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

PRODUCT_CHARACTERISTICS := tablet

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    setup_fs

# Radio Interface
PRODUCT_PACKAGES += rild

# Comm Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Wireless Controller
PRODUCT_PACKAGES += BlakePairing

