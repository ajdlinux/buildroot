################################################################################
#
# syzkaller
#
################################################################################

SYZKALLER_VERSION = 18d7d030e5660609a142ba7a2ea55d5e72fd23a2
SYZKALLER_SITE = $(call github,google,syzkaller,$(SYZKALLER_VERSION))
SYZKALLER_LICENSE = Apache-2.0
SYZKALLER_LICENSE_FILES = LICENSE

# We don't use the golang-package helper, because syzkaller supplies its own
# Makefile and does some very strange things in the build

# TODO: Need to use the internal go toolchain rather than whatever happens to be running on the host...

# Map Buildroot architecture names to golang architecture names

define SYZKALLER_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) HOSTARCH=$(GO_GOARCH) -C $(@D) all
endef

$(info $(generic-package))
$(eval $(generic-package))
