$(call inherit-product, device/softwinner/tulip-chiphd/device.mk)
$(call inherit-product, device/google/atv/products/atv_generic.mk)

GAPPS_VARIANT := nano
GAPPS_EXCLUDED_PACKAGES += SetupWraith

PRODUCT_PACKAGES += \
    ESFileExplorer \
    Bluetooth \
    SideloadLauncher \
    Camera \
    Provision

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.live_tv.xml:system/etc/permissions/android.software.live_tv.xml

PRODUCT_COPY_FILES += \
		frameworks/av/media/libstagefright/data/media_codecs_google_tv.xml:system/etc/media_codecs_google_tv.xml \

# xhdpi, while we are hardcoding the 1080 resolution.
# when we start doing 720 as well, will need to stop hardcoding this.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density.480=160 \
	ro.sf.lcd_density.576=160 \
	ro.sf.lcd_density.720=213 \
	ro.sf.lcd_density.1080=320 \
	ro.sf.lcd_density.2160=640

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi.device_type=4

PRODUCT_CHARACTERISTICS := tv

PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

$(call inherit-product, vendor/google/atv-build/atv-vendor.mk)

PRODUCT_BRAND := Allwinner
PRODUCT_NAME := fugu
PRODUCT_DEVICE := fugu
PRODUCT_BOARD := fugu
PRODUCT_MODEL := PINE A64
PRODUCT_MANUFACTURER := Allwinner
