DOLBY_PATH := vendor/dolby

BOARD_VENDOR_SEPOLICY_DIRS += $(DOLBY_PATH)/sepolicy/vendor

# Dolby
PRODUCT_PACKAGES += \
    XiaomiDolbyApollo

PRODUCT_PACKAGES += \
    libstagefright_foundation-v33

PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(DOLBY_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

PRODUCT_VENDOR_PROPERTIES += \
   persist.vendor.audio_fx.current=dolby

PRODUCT_PACKAGES += \
    libavservices_minijail_vendor \
    libcodec2_soft_common.vendor \
    libsfplugin_ccodec_utils.vendor

$(call inherit-product, vendor/dolby/common/common-vendor.mk)

