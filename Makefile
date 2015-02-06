.PHONY: list

ICONS=alpine arch coreos docker esxi fedora_atomic_host gentoo kali netbsd oel omnios openbsd slackware tinycore ubuntu_snappy_core
ICON_SUFFIX:=.icns
ICON_SET_SUFFIX:=.iconset

ICON_SETS=$(ICONS:=.iconset)
ICON_FILES=$(ICONS:=.icns)

list:
	@echo "Usage: make all, or make <icon>"
	@echo "Available icons are:"
	@echo "   " $(ICONS)

all: $(ICON_FILES)

%.icns: iconsets/%.iconset
	iconutil --convert icns --output icns/$@ $<

iconsets/$(ICON_SETS):
