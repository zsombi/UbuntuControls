TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML2_IMPORT_PATH = $$OUT_PWD/Ubuntu/Components

# Default rules for deployment.
include(deployment.pri)
