include $(TOPDIR)/rules.mk

PKG_NAME:=luci-node-admin
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-node-admin
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:= People's Wifi Mesh Node Admin
  DEPENDS:=+luci-lib-json +luci-mod-admin-core +luci-lib-httpclient +luci-theme-bootstrap
	MAINTAINER:=Max B <maxb.personal@gmail.com>
endef

define Package/luci-node-admin/description
	Luci Admin Module for People's Wifi Nodes.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-node-admin/install
	$(CP) ./files/* $(1)/
	chmod 755 $(1)/www/cgi-bin/mesh-admin
endef

$(eval $(call BuildPackage,luci-node-admin))

