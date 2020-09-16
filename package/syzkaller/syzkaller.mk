################################################################################
#
# syzkaller
#
################################################################################

SYZKALLER_VERSION = 18d7d030e5660609a142ba7a2ea55d5e72fd23a2
SYZKALLER_SITE = $(call github,google,syzkaller,$(SYZKALLER_VERSION))
SYZKALLER_LICENSE = Apache-2.0
SYZKALLER_LICENSE_FILES = LICENSE

$(eval $(golang-package))
