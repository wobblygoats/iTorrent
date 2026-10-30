# Releases go through release-kit (Tools/release-kit): a merge to main that changes the app is a
# TestFlight build of dev.wobblygoat.magictv. `make version` prints the version it would get.
PROJ = iTorrent.xcodeproj
# The app links LibTorrent.framework, which LibTorrent.xcodeproj in the workspace builds.
WORKSPACE = iTorrent.xcworkspace
IOS_SCHEME = iTorrent
TESTFLIGHT_FLAGS = -skipMacroValidation -skipPackagePluginValidation
KIT = Tools/release-kit
include $(KIT)/make/release.mk
$(KIT)/make/release.mk: ; git submodule update --init $(KIT)

.PHONY: deps
deps:
	Tools/prepare-build.sh

testflight: deps
