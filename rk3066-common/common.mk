#
# Copyright (C) 2011 The Android Open-Source Project
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

DEVICE_PACKAGE_OVERLAYS := device/rockchip/rk3066-common/overlay

# kernel
TARGET_KERNEL_SOURCE := kernel/rockchip
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#LOCAL_KERNEL := device/rockchip/rk3066-common/kernel
#else
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif
#TARGET_PREBUILT_KERNEL := device/rockchip/rk3066-common/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/rockchip/rk3066-common/kernel

# Ramdisk
PRODUCT_COPY_FILES += \
	device/rockchip/rk3066-common/ramdisk/init.rk30board.rc:root/init.rk30board.rc \
	device/rockchip/rk3066-common/ramdisk/init.rk30board.usb.rc:root/init.rk30board.usb.rc \
	device/rockchip/rk3066-common/ramdisk/ueventd.rk30board.rc:root/ueventd.rk30board.rc \
	device/rockchip/rk3066-common/ramdisk/fstab.rk30board:root/fstab.rk30board
#	device/rockchip/rk3066-common/ramdisk/init.rc:root/init.rc

# temp hack to gain shell before system mount
#PRODUCT_COPY_FILES += \
#    $(call find-copy-subdir-files,*,device/rockchip/rk3066-common/prebuilt/usr/bin,root/system/usr/bin)

# Firmware
PRODUCT_COPY_FILES += \
	device/rockchip/rk3066-common/prebuilt/firmware/athtcmd_ram.bin:system/etc/firmware/athtcmd_ram.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/athwlan.bin.z77:system/etc/firmware/athwlan.bin.z77 \
	device/rockchip/rk3066-common/prebuilt/firmware/bdata.SD31.bin:system/etc/firmware/bdata.SD31.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/data.patch.hw2_0.bin:system/etc/firmware/data.patch.hw2_0.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/device.bin:system/etc/firmware/device.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_bcm4319.bin:system/etc/firmware/fw_bcm4319.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_bcm4329_wapi.bin:system/etc/firmware/fw_bcm4329_wapi.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_bcm4330_apsta.bin:system/etc/firmware/fw_bcm4330_apsta.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_bcm4330.bin:system/etc/firmware/fw_bcm4330.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK901a0_apsta.bin:system/etc/firmware/fw_RK901a0_apsta.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK901a0.bin:system/etc/firmware/fw_RK901a0.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK901a2_apsta.bin:system/etc/firmware/fw_RK901a2_apsta.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK901a2.bin:system/etc/firmware/fw_RK901a2.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK901a2_p2p.bin:system/etc/firmware/fw_RK901a2_p2p.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK901.bin:system/etc/firmware/fw_RK901.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK903b2_apsta.bin:system/etc/firmware/fw_RK903b2_apsta.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK903b2.bin:system/etc/firmware/fw_RK903b2.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK903b2_p2p.bin:system/etc/firmware/fw_RK903b2_p2p.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK903.bin:system/etc/firmware/fw_RK903.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/fw_RK903_p2p.bin:system/etc/firmware/fw_RK903_p2p.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/nvram_4330.txt:system/etc/firmware/nvram_4330.txt \
	device/rockchip/rk3066-common/prebuilt/firmware/nvram_B23.txt:system/etc/firmware/nvram_B23.txt \
	device/rockchip/rk3066-common/prebuilt/firmware/nvram_RK901.bad:system/etc/firmware/nvram_RK901.bad \
	device/rockchip/rk3066-common/prebuilt/firmware/nvram_RK901.txt:system/etc/firmware/nvram_RK901.txt \
	device/rockchip/rk3066-common/prebuilt/firmware/nvram_RK903_26M.cal:system/etc/firmware/nvram_RK903_26M.cal \
	device/rockchip/rk3066-common/prebuilt/firmware/nvram_RK903.cal:system/etc/firmware/nvram_RK903.cal \
	device/rockchip/rk3066-common/prebuilt/firmware/nvram_RK903.txt:system/etc/firmware/nvram_RK903.txt \
	device/rockchip/rk3066-common/prebuilt/firmware/nvram.txt:system/etc/firmware/nvram.txt \
	device/rockchip/rk3066-common/prebuilt/firmware/otp.bin.z77:system/etc/firmware/otp.bin.z77 \
	device/rockchip/rk3066-common/prebuilt/firmware/sd8686.bin:system/etc/firmware/sd8686.bin \
	device/rockchip/rk3066-common/prebuilt/firmware/sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin

# Permissions
PRODUCT_COPY_FILES += \
	device/rockchip/rk3066-common/config/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	device/rockchip/rk3066-common/config/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	device/rockchip/rk3066-common/config/permissions/android.software.pppoe.xml:system/etc/permissions/android.software.pppoe.xml \
	device/rockchip/rk3066-common/config/permissions/features.xml:system/etc/permissions/features.xml \
	device/rockchip/rk3066-common/config/permissions/platform.xml:system/etc/permissions/platform.xml \
	device/rockchip/rk3066-common/config/permissions/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	device/rockchip/rk3066-common/config/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	device/rockchip/rk3066-common/config/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	device/rockchip/rk3066-common/config/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
	device/rockchip/rk3066-common/config/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	device/rockchip/rk3066-common/config/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
	device/rockchip/rk3066-common/config/permissions/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	device/rockchip/rk3066-common/config/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	device/rockchip/rk3066-common/config/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	device/rockchip/rk3066-common/config/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	device/rockchip/rk3066-common/config/permissions/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml

# WiFi
PRODUCT_COPY_FILES += \
	device/rockchip/rk3066-common/config/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Filesystem
PRODUCT_COPY_FILES += \
	device/rockchip/rk3066-common/config/vold.fstab:system/etc/vold.fstab

# Audio/Alsa
PRODUCT_COPY_FILES += \
	device/rockchip/rk3066-common/config/asound.conf:system/etc/asound.conf \
	device/rockchip/rk3066-common/config/audio_policy.conf:system/etc/audio_policy.conf \
	device/rockchip/rk3066-common/config/media_codecs.xml:system/etc/media_codecs.xml \
	device/rockchip/rk3066-common/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/rockchip/rk3066-common/config/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
	device/rockchip/rk3066-common/config/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
	device/rockchip/rk3066-common/config/alsa/init/00main:system/usr/share/alsa/init/00main \
	device/rockchip/rk3066-common/config/alsa/init/default:system/usr/share/alsa/init/default \
	device/rockchip/rk3066-common/config/alsa/init/hda:system/usr/share/alsa/init/hda \
	device/rockchip/rk3066-common/config/alsa/init/help:system/usr/share/alsa/init/help \
	device/rockchip/rk3066-common/config/alsa/init/info:system/usr/share/alsa/init/info \
	device/rockchip/rk3066-common/config/alsa/init/test:system/usr/share/alsa/init/test \
	device/rockchip/rk3066-common/config/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
	device/rockchip/rk3066-common/config/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

# Prebuilt
PRODUCT_COPY_FILES += \
	device/rockchip/rk3066-common/prebuilt/bin/ntfs-3g:system/bin/ntfs-3g \
	device/rockchip/rk3066-common/prebuilt/lib/libntfs-3g.so:system/lib/libntfs-3g.so
#	device/rockchip/rk3066-common/prebuilt/bin/e2fsck:root/sbin/e2fsck \
#	device/rockchip/rk3066-common/prebuilt/bin/mkdosfs:root/sbin/mkdosfs \
#	device/rockchip/rk3066-common/prebuilt/bin/mke2fs:root/sbin/mke2fs \
#	device/rockchip/rk3066-common/prebuilt/bin/readahead:root/sbin/readahead \
#	device/rockchip/rk3066-common/prebuilt/bin/resize2fs:root/sbin/resize2fs \
#   device/rockchip/rk3066-common/prebuilt/bin/init:root/init

# Bootanimation
PRODUCT_COPY_FILES += \
	device/rockchip/rk3066-common/prebuilt/bootanimation.zip:system/media/bootanimation.zip

# Build extra packages

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	tinyplay

# Bluetooth
PRODUCT_PACKAGES += \
	hciconfig \
	hcitool

# Filesystem management
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs \
	e2fsck

# Rockchip utils
PRODUCT_PACKAGES += \
	rk_afptool \
	rk_img_unpack \
	rk_img_maker \
	rk_mkkrnlimg \
	rk_mkbootimg

# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Video
PRODUCT_PACKAGES += \
	libavcodec \
	libavutil

# Utils
PRODUCT_PACKAGES += \
	openssh \
	lsof \
	powertop \
	vim

# Graphics
PRODUCT_PACKAGES += \
	librs_jni

# Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.otg=slave

PRODUCT_PROPERTY_OVERRIDES += \
	hwui.render_dirty_regions=false \
	ro.sf.lcd_density=160 \
	ro.opengles.version=131072 \
	ro.com.google.networklocation=1 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y

ADDITIONAL_DEFAULT_PROPERTIES += \
        persist.ro.hardware=rk30board \
	persist.sys.timezone=Europe/Stockholm \
	ro.secure=0 \
	ro.debuggable=1 \
	ro.allow.mock.location=1 \
	ro.kernel.android.checkjni=1 \
	ro.product.usbfactory=rockchip_usb \
	ro.product.manufacturer=Rockchip \
	ro.product.model=mk808 \
	ro.rk.install_non_market_apps=true \
	sys.hwc.compose_policy=6 \
	testing.mediascanner.skiplist=/mnt/sdcard/Android/ \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15

PRODUCT_CHARACTERISTICS := tablet
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_AAPT_CONFIG := xlarge mdpi normal xhdpi hdpi

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)

# Include google apps
$(call inherit-product-if-exists, vendor/google/gapps.mk)

# Setup proprietary files
$(call inherit-product-if-exists, vendor/rockchip/rk3066/device-vendor.mk)

