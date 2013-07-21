SUPERUSER_EMBEDDED := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/dictionaries

PRODUCT_PACKAGES += \
    AOKPtips \
    AppWidgetPicker \
    LatinImeDictionaryPack \
    mGerrit \
    Microbes \
    PermissionsManager \
    ROMControl \
    Superuser \
    su \
    SwagPapers \
    Torch \
    UnicornPorn \
    LockClock \
    XposedInstaller \
    XposedNetflixWorkaround \
    XposedPerAppSettings \
    HALO

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3

# Installer
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/aokp/prebuilt/common/etc/persist.conf:system/etc/persist.conf

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/aokp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/aokp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/init.local.rc:root/init.aokp.rc \
    vendor/aokp/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/aokp/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/aokp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aokp/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    sftp \
    scp \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# Optional CM packages
PRODUCT_PACKAGES += \
    VoicePlus \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/aokp/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/aokp/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh \
    vendor/aokp/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

# Custom Packages
PRODUCT_PACKAGES += \
        Music \
        CMFileManager \
        CellBroadcastReceiver \
        Apollo \
        DSPManager \
        libcyanogen-dsp \
        audio_effects.conf \
        JellyBlue_X

# Bluetooth config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Inherit common build.prop overrides
-include vendor/aokp/configs/common_versions.mk

# T-Mobile theme engine
-include vendor/aokp/configs/themes_common.mk

# common boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
