################################################################################
#
# kodi-peripheral-joystick
#
################################################################################

KODI_PERIPHERAL_JOYSTICK_VERSION = master
KODI_PERIPHERAL_JOYSTICK_SITE = $(call github,xbmc,peripheral.joystick,$(KODI_PERIPHERAL_JOYSTICK_VERSION))
KODI_PERIPHERAL_JOYSTICK_LICENSE = GPLv2+
KODI_PERIPHERAL_JOYSTICK_DEPENDENCIES = kodi kodi-platform libplatform pcre

$(eval $(cmake-package))
