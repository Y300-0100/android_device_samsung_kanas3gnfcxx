$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/kanas3gnfcxx/kanas3gnfcxx-vendor.mk)

# Use high-density artwork where available
PRODUCT_AAPT_CONFIG := normal ldpi mdpi hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_TAGS += dalvik.gc.type-precise

DEVICE_PACKAGE_OVERLAYS += device/samsung/kanas3gnfcxx/overlay

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/kanas3gnfcxx/root/init.sc8830_ss.rc:root/init.sc8830_ss.rc \
	device/samsung/kanas3gnfcxx/root/init.sc8830.usb.rc:root/init.sc8830.usb.rc \
	device/samsung/kanas3gnfcxx/root/init.sc8830.rc:root/init.sc8830.rc \
	device/samsung/kanas3gnfcxx/root/init.trace.rc:root/init.trace.rc \
	device/samsung/kanas3gnfcxx/root/init.kanas3gnfc.rc:root/init.kanas3gnfc.rc \
	device/samsung/kanas3gnfcxx/root/init.environ.rc:root/init.environ.rc \
	device/samsung/kanas3gnfcxx/root/init.usb.rc:root/init.usb.rc \
	device/samsung/kanas3gnfcxx/root/init.board.rc:root/init.board.rc \
	device/samsung/kanas3gnfcxx/root/init.kanas3gnfc_base.rc:root/init.kanas3gnfc_base.rc \
	device/samsung/kanas3gnfcxx/root/init.rc:root/init.rc \
	device/samsung/kanas3gnfcxx/root/init.wifi.rc:root/init.wifi.rc \
	device/samsung/kanas3gnfcxx/root/modem_control:root/modem_control \
	device/samsung/kanas3gnfcxx/root/seapp_contexts:root/seapp_contexts \
	device/samsung/kanas3gnfcxx/root/sepolicy:root/sepolicy \
	device/samsung/kanas3gnfcxx/root/ueventd.sc8830.rc:root/ueventd.sc8830.rc \
	device/samsung/kanas3gnfcxx/root/file_contexts:root/file_contexts \
	device/samsung/kanas3gnfcxx/root/fstab.kanas3gnfcxx:root/fstab.kanas3gnfcxx \
	device/samsung/kanas3gnfcxx/root/property_contexts:root/property_contexts

PRODUCT_COPY_FILES += \
	device/samsung/kanas3gnfcxx/media_codecs.xml:system/etc/media_codecs.xml \

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/samsung/kanas3gnfcxx/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
	device/samsung/kanas3gnfcxx/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
	device/samsung/kanas3gnfcxx/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/samsung/kanas3gnfcxx/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl

# Filesystem management tools
PRODUCT_PACKAGES += \
	setup_fs

# Usb accessory
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# graphics modules
PRODUCT_PACKAGES += \
	libEGL_mali.so \
	libGLESv1_CM_mali.so \
	libGLESv2_mali.so \
	libMali.so \
	libboost.so \
	mali.ko

# video modules
PRODUCT_PACKAGES += \
	libstagefright_sprd_soft_mpeg4dec \
	libstagefright_sprd_soft_h264dec \
	libstagefright_sprd_mpeg4dec \
	libstagefright_sprd_mpeg4enc \
	libstagefright_sprd_h264dec \
	libstagefright_sprd_h264enc \
	libstagefright_sprd_vpxdec \
	libstagefright_soft_mjpgdec \
	libstagefright_soft_imaadpcmdec \
	libstagefright_sprd_aacdec \
	libstagefright_sprd_mp3dec \
	libstagefright_sprd_apedec

# default audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler

# sprd HAL modules
PRODUCT_PACKAGES += \
	audio.primary.sc8830 \
	audio_policy.sc8830 \
	gralloc.sc8830 \
	camera.sc8830 \
	camera2.sc8830 \
	lights.sc8830 \
	hwcomposer.sc8830 \
	sprd_gsp.sc8830 \
	sensors.sc8830

# Device-specific packages
PRODUCT_PACKAGES += \
	SamsungServiceMode \
	Torch \

# Charger
PRODUCT_PACKAGES += \
	charger \
	charger_res_images

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Support for Browser's saved page feature. This allows
# for pages saved on previous versions of the OS to be
# viewed on the current OS.
PRODUCT_PACKAGES += \
    libskia_legacy

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    mobiledata.interfaces=rmnet0 \
    gsm.version.baseband=2030 \
    rild.libpath=/system/lib/libreference-ril_sp.so \
    ro.telephony.ril_class=SamsungBCMRIL \
    ril.subscription.types=NV,RUIM \
    rild.libargs=-d/dev/smd0 \
    ro.telephony.call_ring.delay=3000 \
    ro.telephony.call_ring.multiple=false
    ro.cm.hardware.cabc=/sys/class/mdnie/mdnie/cabc \
    ro.telephony.call_ring=0

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# MTP
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/samsung/kanas3gnfcxx/kanas3gnfcxx-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_kanas3gnfcxx
PRODUCT_DEVICE := kanas3gnfcxx
