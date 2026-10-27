SUBTARGET:=sparx5
BOARDNAME:=Microchip SparX-5 switches
FEATURES+= boot-part rootfs-part

DEFAULT_PACKAGES += kmod-sparx5-switch \
	ip-bridge

define Target/Description
	Build firmware images for Microchip SparX-5 switch based boards.
endef
