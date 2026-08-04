TARGET = kimg_exr6

INCLUDEPATH += install/include/Imath install/include/OpenEXR

HEADERS = src/exr_p.h src/scanlineconverter_p.h src/util_p.h
SOURCES = src/exr.cpp src/scanlineconverter.cpp
OTHER_FILES = src/exr.json

LIBS += install/lib/OpenEXR-3_4.lib install/lib/OpenEXRUtil-3_4.lib install/lib/OpenEXRCore-3_4.lib install/lib/Iex-3_4.lib install/lib/IlmThread-3_4.lib install/lib/Imath-3_2.lib

TEMPLATE = lib

CONFIG += release skip_target_version_ext c++17 warn_on plugin exceptions
CONFIG -= separate_debug_info debug debug_and_release force_debug_info

win32:VERSION = 6.28.1
QMAKE_TARGET_COMPANY = "Daniel Novomesky"
QMAKE_TARGET_PRODUCT = "qt-exr-image-plugin"
QMAKE_TARGET_DESCRIPTION = "OpenEXR plug-in for Qt6 applications"
QMAKE_TARGET_COPYRIGHT = "Copyright (C) 2003-2026 contributors to KDE project"
QMAKE_TARGET_COMMENTS = "Build using Qt 6.9.3"
