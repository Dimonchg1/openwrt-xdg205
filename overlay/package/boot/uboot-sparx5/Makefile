include $(TOPDIR)/rules.mk

PKG_RELEASE:=1
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/microchip-ung/u-boot
PKG_SOURCE_VERSION:=f221746edd87ae5e085d520551818b64b7a27be3
PKG_SOURCE_DATE:=2026-06-23
PKG_VERSION:=2024.04

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/kernel.mk

define U-Boot/Default
  BUILD_TARGET:=microchipsw
  UBOOT_IMAGE:=u-boot.bin
endef

define U-Boot/xdg205-nor
  NAME:=Connect Tech Xtreme/10G XDG205 (SPI NOR)
  BUILD_DEVICES:=cti_xdg205
  BUILD_SUBTARGET:=sparx5
  UBOOT_CONFIG:=sparx5_xdg205_nor
endef

UBOOT_TARGETS:=xdg205-nor

define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
	$(CP) $(PKG_BUILD_DIR)/$(UBOOT_IMAGE) $(STAGING_DIR_IMAGE)/$(BUILD_VARIANT)-$(UBOOT_IMAGE)
endef

$(eval $(call BuildPackage/U-Boot))
