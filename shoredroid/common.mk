# Copyright (C) 2014 ShoreDroid Project
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

# LGE blob(s) necessary for Superuser
PRODUCT_COPY_FILES := \
	vendor/su/Superuser.apk:system/app/Superuser.apk \
	vendor/su/install-recovery.sh:system/etc/install-recovery.sh \
	vendor/su/su:system/bin

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/shoredroid/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# ViPER
PRODUCT_COPY_FILES += \
    vendor/shoredroid/shoreaudio/libv4a_fx_kk_NEON.so:system/lib/soundfx/libv4a_fx_kk_NEON.so \
    vendor/shoredroid/shoreaudio/ViPER4Android_FX_A4.x.apk:system/app/ViPER4Android_FX_A4.x.apk \

#MirrorEnabler
PRODUCT_COPY_FILES += \
    vendor/shoredroid/app-release.apk:system/app/app-release.apk
    
#Build Properties for ShoreDroid
PRODUCT_PROPERTY_OVERRIDES += \
    ro.shoreware_version = v1.5 \
    ro.build.display.id = KTU84P \
    ro.rommanager.developerid = shoredroid

PRODUCT_PACKAGES += \
    PACPerformance \
    Torch
    
