TEMPLATE = app
TARGET = binarycreator
INCLUDEPATH += . .. rcc ../common

include(../../installerfw.pri)

QT -= gui
QT += qml xml

CONFIG += console
DESTDIR = $$IFW_APP_PATH
SOURCES = binarycreator.cpp \
          rcc/rcc.cpp \
          rcc/rccmain.cpp \
          ../common/repositorygen.cpp
HEADERS = rcc/rcc.h
RESOURCES += binarycreator.qrc

macx:include(../../no_app_bundle.pri)

target.path = $$[QT_INSTALL_BINS]
INSTALLS += target
