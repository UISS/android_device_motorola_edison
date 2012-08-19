#
# This is the product configuration for a full edison
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += device/motorola/edison/overlay

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES := \
    charger \
    charger_res_images

# Audio
PRODUCT_COPY_FILES += \
    device/motorola/edison/audio/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
    device/motorola/edison/audio/audio.a2dp.default.so:/system/lib/hw/audio.a2dp.default.so \
    device/motorola/edison/audio/audio.primary.omap4.so:/system/lib/hw/audio.primary.omap4.so \
    device/motorola/edison/audio/audio_policy.omap4.so:/system/lib/hw/audio_policy.omap4.so \
    device/motorola/edison/audio/libasound.so:/system/lib/libasound.so \
    device/motorola/edison/audio/libaudio_ext.so:/system/lib/libaudio_ext.so

# Hardware HALs
PRODUCT_PACKAGES += \
    camera.omap4 \
    libinvensense_mpl \

PRODUCT_PACKAGES += \
    libaudioutils \
    libaudiohw_legacy \

# BlueZ test tools
PRODUCT_PACKAGES += \
    hciconfig \
    hcitool

# Modem
PRODUCT_PACKAGES += \
    nc \
    Stk \
    libaudiomodemgeneric \
    libreference-cdma-sms \
    rild \
    radiooptions \

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_wl12xx \
    dhcpcd.conf \
    hostapd.conf \
    wifical.sh \
    wpa_supplicant.conf \
    TQS_D_1.7.ini \
    crda \
    regulatory.bin \
    calibrator

# Wifi Direct
PRODUCT_PACKAGES += \
    ti_wfd_libs

# Bluetooth
PRODUCT_PACKAGES += \
    bt_sco_app \
    uim-sysfs 

# Release utilities
PRODUCT_PACKAGES += \
    edison_releaseutils-check_kernel \
    edison_releaseutils-finalize_release \
    edison_releaseutils-mke2fs \
    edison_releaseutils-tune2fs

PRODUCT_PACKAGES += \
    camera_test \
    Superuser \
    su \
    DockAudio \
    tinymix \
    tinycap \
    tinyplay \
    safestrapmenu \
    parse_hdmi_edid \

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    FileManager \
    MusicFX \
    Apollo \

# WirelessTether
PRODUCT_PACKAGES += wifi_tether_v3_2-pre1
PRODUCT_COPY_FILES += \
    device/motorola/edison/prebuilt/lib/libwtnativetask.so:system/lib/libwtnativetask.so \


# Rootfs files
PRODUCT_COPY_FILES += \
    device/motorola/edison/root/default.prop:/root/default.prop \
    device/motorola/edison/root/init.rc:/root/init.rc \
    device/motorola/edison/root/init.mapphone_cdma.rc:/root/init.mapphone_cdma.rc \
    device/motorola/edison/root/init.mapphone_umts.rc:/root/init.mapphone_umts.rc \
    device/motorola/edison/root/ueventd.rc:/root/ueventd.rc \
    device/motorola/edison/root/ueventd.mapphone_cdma.rc:/root/ueventd.mapphone_cdma.rc \
    device/motorola/edison/root/ueventd.mapphone_umts.rc:/root/ueventd.mapphone_umts.rc \

# Kexec files
PRODUCT_COPY_FILES += \
    device/motorola/edison/kexec/arm_kexec.ko:system/etc/kexec/arm_kexec.ko \
    device/motorola/edison/kexec/atags:system/etc/kexec/atags \
    device/motorola/edison/kexec/devtree:system/etc/kexec/devtree \
    device/motorola/edison/kexec/kexec:system/etc/kexec/kexec \
    device/motorola/edison/kexec/kexec.ko:system/etc/kexec/kexec.ko \
    device/motorola/edison/kexec/uart.ko:system/etc/kexec/uart.ko \
    out/target/product/edison/ramdisk.img:system/etc/kexec/ramdisk.img \
    out/target/product/edison/kernel:system/etc/kexec/kernel \

# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:/system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \


# Prebuilts
PRODUCT_COPY_FILES += \
    device/motorola/edison/prebuilt/bin/battd:system/bin/battd \
    device/motorola/edison/prebuilt/bin/strace:system/bin/strace \
    device/motorola/edison/prebuilt/etc/firmware/ducati-m3.bin:/system/etc/firmware/ducati-m3.bin \
    device/motorola/edison/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/edison/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/motorola/edison/prebuilt/etc/vold.fstab:system/etc/vold.fstab \


# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US

# stuff specific to ti OMAP4 hardware
$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
$(call inherit-product, hardware/ti/wpan/ti-wpan-products.mk)
$(call inherit-product-if-exists, vendor/motorola/common/proprietary/imgtec/sgx-imgtec-bins.mk)
$(call inherit-product-if-exists, vendor/verizon/verizon-ics.mk)
$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor.mk)
$(call inherit-product-if-exists, device/ti/proprietary-open/wl12xx/wlan/wl12xx-wlan-fw-products.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := full_edison
PRODUCT_DEVICE := edison