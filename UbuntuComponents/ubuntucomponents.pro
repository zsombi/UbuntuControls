TEMPLATE = lib
TARGET = UbuntuComponents
DESTDIR = $$OUT_PWD/../Ubuntu/Components
#TARGETPATH = Ubuntu/Components
IMPORT_VERSION = 2.0

QT += qml quick
CONFIG += qt plugin c++11

QT_PRIVATE += core-private gui-private qml-private quick-private labstemplates-private
DEFINES += QT_NO_CAST_TO_ASCII QT_NO_CAST_FROM_ASCII
CONFIG += no_cxx_module

TARGET = $$qtLibraryTarget($$TARGET)
uri = Ubuntu.Components

# Input
SOURCES += \
    ubuntucomponents_plugin.cpp \
    controlbase.cpp

HEADERS += \
    ubuntucomponents_plugin.h \
    controlbase.h \
    controlbase_p.h

DISTFILES = qmldir

!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
message(copy $$_PRO_FILE_PWD_)
    copy_qmldir.target = $$DESTDIR/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/qmldir
    copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
    QMAKE_EXTRA_TARGETS += copy_qmldir
    PRE_TARGETDEPS += $$copy_qmldir.target
}

qmldir.files = qmldir
unix {
    installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)
    qmldir.path = $$installPath
    target.path = $$installPath
    INSTALLS += target qmldir
}
