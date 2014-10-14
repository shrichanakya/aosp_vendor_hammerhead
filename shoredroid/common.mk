#create a directory in /system/
    $(shell mkdir -p $(TARGET_OUT)/xbin/)
    
# LGE blob(s) necessary for Superuser
PRODUCT_COPY_FILES := \
	vendor/su/Superuser.apk:system/app/Superuser.apk \
	vendor/su/install-recovery.sh:system/etc/install-recovery.sh \
	vendor/su/su:system/bin \
	vendor/su/su:system/xbin \

#	ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
# determine the smaller dimension
#TARGET_BOOTANIMATION_SIZE := $(shell \
#  if [ $(TARGET_SCREEN_WIDTH) -lt $(TARGET_SCREEN_HEIGHT) ]; then \
#    echo $(TARGET_SCREEN_WIDTH); \
#  else \
#    echo $(TARGET_SCREEN_HEIGHT); \
#  fi )

# get a sorted list of the sizes
#bootanimation_sizes := $(subst .zip,, $(shell ls vendor/cm/prebuilt/common/bootanimation))
#bootanimation_sizes := $(shell echo -e $(subst $(space),'\n',$(bootanimation_sizes)) | sort -rn)

# find the appropriate size and set
#define check_and_set_bootanimation
#$(eval TARGET_BOOTANIMATION_NAME := $(shell \
#  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then
#    if [ $(1) -le $(TARGET_BOOTANIMATION_SIZE) ]; then \
#      echo $(1); \
#      exit 0; \
#    fi;
#  fi;
#  echo $(TARGET_BOOTANIMATION_NAME); ))
#endef
#$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

#PRODUCT_BOOTANIMATION := vendor/shoredroid/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip
#endif

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

PRODUCT_PACKAGES += \
    PACPerformance
    
