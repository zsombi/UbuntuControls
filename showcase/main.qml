import QtQuick 2.6
import QtQuick.Window 2.2
import Ubuntu.Components 2.0

Window {
    visible: true

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
}
