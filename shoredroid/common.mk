# LGE blob(s) necessary for Superuser
PRODUCT_COPY_FILES := \
	vendor/su/Superuser.apk:system/app/Superuser.apk \
	vendor/su/install-recovery.sh:system/etc/install-recovery.sh \
	vendor/su/su:system/bin \
	vendor/su/su:system/xbin \

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/shoredroid/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

PRODUCT_PACKAGES += \
    PACPerformance
    
