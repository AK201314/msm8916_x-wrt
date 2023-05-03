# SPDX-License-Identifier: GPL-2.0-only

ifeq ($(SUBTARGET),msm8916)

define Device/msm8916
	SOC := msm8916
	CMDLINE := "earlycon console=tty0 console=ttyMSM0,115200 root=/dev/mmcblk0p14 rw rootwait"
endef

define Device/openstick-ufi001c
  $(Device/msm8916)
  DEVICE_VENDOR := Zhihe
  DEVICE_MODEL := OpenStick UFI001C
  DEVICE_DTS := msm8916-thwc-ufi001c
  DEVICE_PACKAGES := wpad-basic-wolfssl qcom-msm8916-modem-openstick-ufi001c-firmware qcom-msm8916-openstick-ufi001c-wcnss-firmware qcom-msm8916-wcnss-openstick-ufi001c-nv
endef
TARGET_DEVICES += openstick-ufi001c

define Device/openstick-ufi001b
  $(Device/openstick-ufi001c)
  DEVICE_MODEL := OpenStick UFI001B
  DEVICE_PACKAGES := wpad-basic-wolfssl qcom-msm8916-modem-openstick-ufi001b-firmware qcom-msm8916-openstick-ufi001b-wcnss-firmware qcom-msm8916-wcnss-openstick-ufi001b-nv
endef
TARGET_DEVICES += openstick-ufi001b

define Device/openstick-ufi103s
  $(Device/openstick-ufi001c)
  DEVICE_MODEL := OpenStick UFI103S
  DEVICE_PACKAGES := wpad-basic-wolfssl qcom-msm8916-modem-openstick-ufi103s-firmware qcom-msm8916-openstick-ufi103s-wcnss-firmware qcom-msm8916-wcnss-openstick-ufi103s-nv
endef
TARGET_DEVICES += openstick-ufi103s

endif
