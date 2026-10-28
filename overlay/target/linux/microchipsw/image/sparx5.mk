DTS_DIR := $(DTS_DIR)/microchip

define Build/sparx5-uboot
	cp $(STAGING_DIR_IMAGE)/xdg205-nor-u-boot.bin $@
endef

define Build/sparx5-initramfs-fit
	cat $(BIN_DIR)/$(KERNEL_INITRAMFS_IMAGE) >> $@
endef

define Device/cti_xdg205
	$(call Device/FitImage)
	DEVICE_VENDOR := Connect Tech
	DEVICE_MODEL := Xtreme/10G XDG205
	SOC := sparx5
	KERNEL_LOADADDR := 0x0
	IMAGES += factory.bin
	IMAGE/factory.bin := sparx5-uboot | pad-to 1048576 | pad-to 1572864 | \
		sparx5-initramfs-fit | check-size 46m
endef
TARGET_DEVICES += cti_xdg205
