################################################################################
#
# liblmdb
#
################################################################################

LIBLMDB_VERSION = mdb.master
LIBLMDB_SITE = https://git.openldap.org/openldap/openldap.git
LIBLMDB_SITE_METHOD = git

define LIBLMDB_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define LIBLMDB_INSTALL_TARGET_CMDS
    $(MAKE) -C $(@D) install
endef

$(eval $(generic-package))