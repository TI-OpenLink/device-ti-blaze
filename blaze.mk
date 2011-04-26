#
# Copyright (C) 2009 Texas Instruments
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

DEVICE_PACKAGE_OVERLAYS := device/ti/blaze/overlay

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES := \
        device/ti/blaze/vold.fstab:system/etc/vold.fstab \
        device/ti/blaze/egl.cfg:system/lib/egl/egl.cfg

# Init files
PRODUCT_COPY_FILES += \
        device/ti/blaze/init.omap4430.rc:root/init.omap4430.rc \
        device/ti/blaze/ueventd.omap4430.rc:root/ueventd.omap4430.rc

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
        device/ti/blaze/omap-keypad.kl:system/usr/keylayout/omap-keypad.kl \
        device/ti/blaze/omap-keypad.kl:system/usr/keylayout/omap4-keypad.kl \
        device/ti/blaze/twl6030_pwrbutton.kl:system/usr/keylayout/twl6030_pwrbutton.kl

# Generated kcm keymaps
PRODUCT_PACKAGES := \
        omap-keypad.kcm

# Prebuilt idc files
PRODUCT_COPY_FILES += \
        device/ti/blaze/syn_tm12xx_ts_1.idc:system/usr/idc/syn_tm12xx_ts_1.idc \
        device/ti/blaze/syn_tm12xx_ts_2.idc:system/usr/idc/syn_tm12xx_ts_2.idc

# Filesystem management tools
PRODUCT_PACKAGES += \
        make_ext4fs \
        setup_fs

# OpenMAX IL configuration
TI_OMX_POLICY_MANAGER := hardware/ti/omx/system/src/openmax_il/omx_policy_manager
PRODUCT_COPY_FILES += \
        $(TI_OMX_POLICY_MANAGER)/src/policytable.tbl:system/etc/policytable.tbl \
        device/ti/blaze/media_profiles.xml:system/etc/media_profiles.xml

# graphics
PRODUCT_PACKAGES += \
    sgx-driver 

PRODUCT_PACKAGES += \
    OMXCore \
    libOMX_CoreOsal \
    libOMX_Core \
    libomx_rpc \
    libomx_proxy_common \
    libOMX.TI.DUCATI1.VIDEO.H264D \
    libOMX.TI.DUCATI1.VIDEO.MPEG4D \
    libOMX.TI.DUCATI1.VIDEO.VP6D \
    libOMX.TI.DUCATI1.VIDEO.VP7D \
    libOMX.TI.DUCATI1.VIDEO.H264E \
    libOMX.TI.DUCATI1.VIDEO.MPEG4E \
    libOMX.TI.DUCATI1.IMAGE.JPEGD \
    libOMX.TI.DUCATI1.VIDEO.CAMERA \
    libOMX.TI.DUCATI1.MISC.SAMPLE \
    libOMX.TI.DUCATI1.VIDEO.DECODER

# Tiler and Syslink
PRODUCT_PACKAGES += \
    libipcutils \
    libipc \
    libnotify \
    syslink_trace_daemon.out \
    librcm \
    libsysmgr \
    syslink_daemon.out \
    dmm_daemontest.out \
    event_listener.out \
    interm3.out \
    gateMPApp.out \
    heapBufMPApp.out \
    heapMemMPApp.out \
    listMPApp.out \
    messageQApp.out \
    nameServerApp.out \
    sharedRegionApp.out \
    memmgrserver.out \
    notifyping.out \
    ducati_load.out \
    procMgrApp.out \
    slpmtest.out \
    slpmresources.out \
    slpmtransport.out \
    rcm_multitest.out \
    rcm_multithreadtest.out \
    rcm_multiclienttest.out \
    rcm_daemontest.out \
    rcm_singletest.out \
    syslink_tilertest.out \
    utilsApp.out \
    libd2cmap \
    d2c_test \
    libtimemmgr \
    memmgr_test \
    utils_test \
    tiler_ptest

#TI CameraHal
PRODUCT_PACKAGES += \
    TICameraCameraProperties.xml \
    libtiutils \
    libcamera \
    libfakecameraadapter \
    libomxcameraadapter \
    camera_test

#libskiahw-omap4
PRODUCT_PACKAGES += \
    libskiahwdec \
    SkLibTiJpeg_Test

#Overlay
PRODUCT_PACKAGES += \
    overlay.omap4 \
    overlay_test

# Alsa configuration
PRODUCT_COPY_FILES += \
        device/ti/blaze/asound.conf:system/etc/asound.conf 
# Audio HAL
PRODUCT_PACKAGES += \
    alsa.omap4

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/ti/blaze/boot/zImage
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel \
	device/ti/blaze/boot/fastboot.sh:fastboot.sh \
	$(LOCAL_KERNEL):boot/zImage \
	device/ti/blaze/boot/MLO_es2.2_emu:boot/MLO_es2.2_emu \
	device/ti/blaze/boot/MLO_es2.2_gp:boot/MLO_es2.2_gp \
	device/ti/blaze/boot/u-boot.bin:boot/u-boot.bin \
	device/ti/support-tools/boot/omap4/umulti.sh:umulti.sh


# Modem
PRODUCT_PACKAGES += \
   libaudiomodemgeneric

# Camera
PRODUCT_PACKAGES += \
        CameraOMAP4 

# Wi-Fi
PRODUCT_PACKAGES += \
	wlan_loader \
	wlan_cu \
	tiwlan.ini \
	dhcpcd.conf \
	wpa_supplicant.conf

# HotSpot
PRODUCT_PACKAGES += \
	tiap_loader \
	tiap_cu \
	tiwlan_ap.ini \
	hostap \
	hostapd.conf

# Misc other modules
PRODUCT_PACKAGES += \
        Quake \
        FieldTest \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers 

# Lights
PRODUCT_PACKAGES += \
        lights.omap4

# Sensors
PRODUCT_PACKAGES += \
        sensors.omap4

# Libs
PRODUCT_PACKAGES += \
        libRS \
        librs_jni \
        libomap_mm_library_jni


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        device/ti/blaze/apns.xml:system/etc/apns-conf.xml \
        frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \
        frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        device/ti/blaze/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
        frameworks/base/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
        frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
        frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Pick up hdpi resources where available
PRODUCT_LOCALES += hdpi

# Pick up audio package
# no longer needed?
include frameworks/base/data/sounds/AudioPackage2.mk

# this make file is to extend FRAMEWORKS_BASE_SUBDIRS from pathmake.mk
# and this is placed in common-open as this common between omap3 and omap4
#include device/ti/common-open/OmapMMLib.mk

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
#PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.android.dateformat=MM-dd-yyyy \
        ro.com.android.dataroaming=true 
#        dalvik.vm.heapsize=32m


# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/ti/blaze/device-vendor.mk)

