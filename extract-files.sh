#!/bin/sh

# FIX ME!

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=amazing_cdma
MANUFACTURER=samsung
LOCAL_PATH=/

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1

# rill
cp lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libsec-ril-cdma.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
cp bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# omx libs
cp lib/libmm-abl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libmm-adspsvc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxAacDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxAacEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxAdpcmDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxAmrDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxAmrEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxAmrRtpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxAmrwbDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxCore.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxEvrcDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxEvrcEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxEvrcHwDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxH264Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxMp3Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxMpeg4Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxOn2Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxQcelp13Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxQcelp13Enc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxQcelpHwDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxrv9Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxVidEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxVp8Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxWmaDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libOmxWmvDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# camera
cp lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libcamera_client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/libcameraservice.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# wifi
cp lib/modules/ath.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
cp lib/modules/ath6kl_sdio.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
cp lib/modules/cfg80211.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
cp lib/modules/librasdioif.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
cp etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
cp etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
cp etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
cp bin/hostapd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
cp bin/wlandutservice ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# bluetooth

# audio
cp lib/libaudioeq.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# gps
cp lib/hw/gps.msm7627a.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hwn

# lights
cp lib/hw/lights.msm7627a.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw

# sensor
cp lib/hw/sensors.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw

# camera
cp lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
cp lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
cp lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
cp lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
cp etc/firmware/yamato_pfp.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
cp etc/firmware/yamato_pm4.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
cp lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
cp lib/egl/egl.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

## RIL related stuff
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsec-ril-cdma.so:system/lib/libsec-ril-cdma.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rild:system/bin/rild


## OMX proprietaries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmm-abl.so:system/lib/libmm-abl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxOn2Dec.so:system/lib/libOmxOn2Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxrv9Dec.so:system/lib/libOmxrv9Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxVp8Dec.so:system/lib/libOmxVp8Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

## Camera proprietaries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libjpeg.so:system/lib/libjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera_client.so:system/lib/libcamera_client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcameraservice.so:system/lib/libcameraservice.so \\

## Atheros AR6003 firmware
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath.ko:system/lib/modules/ath.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6kl_sdio.ko:system/lib/modules/ath6kl_sdio.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/cfg80211.ko:system/lib/modules/cfg80211.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/librasdioif.ko:system/lib/modules/librasdioif.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/bdata.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin \\
/hw2.1.1/device.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/fw-3.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/hostapd:system/bin/hostapd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/wlandutservice:system/bin/wlandutservice

## Bluetooth
# PRODUCT_COPY_FILES += \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/BCM2049C0_003.001.031.0088.0094.hcd:systembin/BCM2049C0_003.001.031.0088.0094.hcd \\
	
## Audio
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so 

##GPS
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gps.msm7627a.so:system/lib/hw/gps.msm7627a.so \\

## Light
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/lights.msm7627a.so:system/lib/hw/lights.msm7627a.so \\

	
## 3D
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietaryetc/firmware/yamato_pfp.fw:systemetc/firmware/yamato_pfp.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietaryetc/firmware/yamato_pm4.fw:systemetc/firmware/yamato_pm4.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg 

## Sensor
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libacc.so:system/lib/libacc.so
EOF

./setup-makefiles.sh
