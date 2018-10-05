# TARGET=plrun
# CC=clang
# LDID=ldid
# CFLAGS= -isysroot /mj/sdks/iPhoneOS11.1.sdk

# .PHONY: default all clean
# .PRECIOUS: $(TARGET)

# default: $(TARGET)
# all: default

# $(TARGET): $(TARGET).m
# 	$(CC) $(CFLAGS) $^ -o $@
# 	$(LDID) -S$(TARGET).ent $(TARGET)

# clean:
# 	rm -f $(TARGET)

THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

include $(THEOS)/makefiles/common.mk

TOOL_NAME = electra-plrun
electra-plrun_FILES = plrun.m
electra-plrun_CODESIGN_FLAGS = -Splrun.ent

include $(THEOS_MAKE_PATH)/tool.mk
