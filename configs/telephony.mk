# World APN list
PRODUCT_COPY_FILES += \
    vendor/pa/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/pa/prebuilt/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# Mms depends on SoundRecorder for recorded audio messages
PRODUCT_PACKAGES += \
    SoundRecorder
