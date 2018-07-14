HELLOWORLDMPI_VERSION = 1.0.0
HELLOWORLDMPI_SITE = $(TOPDIR)/../helloworldmpi
HELLOWORLDMPI_SITE_METHOD = local

define HELLOWORLDMPI_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) 
endef

define HELLOWORLDMPI_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/helloworldmpi $(TARGET_DIR)/usr/bin/helloworldmpi

	$(INSTALL) -D -m 0755 $(@D)/helloworldmpi-init $(TARGET_DIR)/etc/init.d/S90helloworldmpi	
endef

$(eval $(generic-package))
