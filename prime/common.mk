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

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl
    
# ViPER
PRODUCT_COPY_FILES += \
    vendor/prime/shoreaudio/libv4a_fx_LP_NEON.so:system/lib/soundfx/libv4a_fx_LP_NEON.so \
    vendor/prime/shoreaudio/ViPER4Android_FX_A4.x.apk:system/app/ViPER4Android_FX_A4.x.apk \
    
#Build Properties for Prime
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=shoredroid \
    ro.modversion=Prime_vQA1.6.9

PRODUCT_PACKAGES += \
    PACPerformance
    
