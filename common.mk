PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.google.clientidbase=android-google \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# X-Reality
   PRODUCT_PROPERTY_OVERRIDES += \
   ro.service.swiqi.supported = true \
   persist.service.swiqi.enable = 1 \
   ro.service.swiqi2.supported = true \
   persist.service.swiqi2.enable = 1 \
   ro.service.swiqi3.supported = true \
   persist.service.swiqi3.enable = 1

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/zos/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

# Include LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/zos/overlay/dictionaries

# init.d support
PRODUCT_COPY_FILES += \
    vendor/zos/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/zos/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/zos/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Init file
PRODUCT_COPY_FILES += \
    vendor/zos/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/zos/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/zos/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# CameraNext
PRODUCT_COPY_FILES += \
    vendor/zos/prebuilt/common/addon.d/95-cmcam.sh:system/addon.d/95-cmcam.sh \
    vendor/zos/prebuilt/common/lib/libjni_mosaic_next.so:system/lib/libjni_mosaic_next.so \
    vendor/zos/prebuilt/common/lib/libjni_tinyplanet_next.so:system/lib/libjni_tinyplanet_next.so \
    vendor/zos/prebuilt/common/app/CameraNext/CameraNext.apk:system/app/CameraNext/CameraNext.apk

# SuperSU
PRODUCT_COPY_FILES += \
   vendor/zos/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
   vendor/zos/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Viper4Android
PRODUCT_COPY_FILES += \
   vendor/zos/prebuilt/common/bin/audio_policy.sh:system/audio_policy.sh \
   vendor/zos/prebuilt/common/addon.d/95-LolliViPER.sh:system/addon.d/95-LolliViPER.sh \
   vendor/zos/prebuilt/common/su.d/50viper.sh:system/su.d/50viper.sh \
   vendor/zos/prebuilt/common/app/Viper4Android/Viper4Android.apk:system/priv-app/Viper4Android/Viper4Android.apk 

# Sony Bravia
PRODUCT_COPY_FILES += \
    vendor/zos/prebuilt/common/etc/be_movie:system/etc/be_movie \
    vendor/zos/prebuilt/common/etc/be_photo:system/etc/be_photp \
    vendor/zos/prebuilt/common/framework/com.sonyericsson.android.SwIqiBmp.jar:system/framework/com.sonyericsson.android.SwIqiBmp.jar \
    vendor/zos/prebuilt/common/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml:system/etc/permission/com.sonyericsson.android.SwIqiBmp.xml
   
# Layers Manager
PRODUCT_COPY_FILES += \
vendor/zos/prebuilt/common/app/LayersManager/layersmanager.apk:system/app/LayersManager/layersmanager.apk

# Layers Backup
PRODUCT_COPY_FILES += \
    vendor/zos/prebuilt/common/bin/71-layers.sh:system/addon.d/71-layers.sh

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Misc packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    LatinIME \
    libemoji \
    libsepol \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    powertop \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    gdbserver \
    micro_bench \
    oprofiled \
    sqlite3 \
    strace \
    Terminal

# Required Packages
PRODUCT_PACKAGES += \
    Launcher3 \
    su \
    Eleven 

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Telephony packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Stk

# Mms depends on SoundRecorder for recorded audio messages
PRODUCT_PACKAGES += \
    SoundRecorder

# World APN list
PRODUCT_COPY_FILES += \
    vendor/zos/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/zos/prebuilt/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# Overlays & Include LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += \
	vendor/zos/overlay/common \
	vendor/zos/overlay/dictionaries

# Proprietary latinime libs needed for Keyboard swyping
ifneq ($(filter arm64,$(TARGET_ARCH)),)
PRODUCT_COPY_FILES += \
    vendor/zos/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/zos/prebuilt/common/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so
endif

# by default, do not update the recovery with system updates
PRODUCT_PROPERTY_OVERRIDES += persist.sys.recovery_update=false


ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

$(call inherit-product-if-exists, vendor/extra/product.mk)

PRODUCT_PACKAGES += \
	messaging

include vendor/zos/config/optimizations/sm.mk
