import QtQuick 2.6
import Ubuntu.Components 2.0
import Qt.labs.controls 1.0
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 300
    height: 500

    header: ToolBar {
        RowLayout  {
            anchors.fill: parent
            ToolButton {
                text: qsTr("\u25C0 %1").arg(Qt.application.name)
                enabled: stack.depth > 1
                onClicked: stack.pop()
            }
        }
    }

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: pageComponent
    }

    Component {
        id: pageComponent
        Page {
            header: ToolBar {
                Label {
                    anchors.centerIn: parent
                    text: qsTr("Name: %1, page #%2").arg(Qt.application.name).arg(stack.depth)
                }
            }
            ListView {
                anchors.fill: parent
                model: 50
                delegate: Rectangle {
                    height: 50
                    width: parent.width
                    Button {
                        anchors.centerIn: parent
                        text: qsTr("item #%1").arg(index)
                        onClicked: stack.push(pageComponent)
                    }
                }
            }
        }
    }

}
