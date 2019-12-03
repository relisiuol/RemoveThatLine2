include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RemoveThatLine2
RemoveThatLine2_FILES = Tweak.xm
RemoveThatLine2_FRAMEWORKS = UIKit
RemoveThatLine2_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
