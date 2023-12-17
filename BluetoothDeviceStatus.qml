import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import BluetoothLocalDeviceModule 1.0

Row {
    id: row
    spacing: 10
    anchors {
        left: parent.left
        right: parent.right
        margins: 10
    }

    signal customClicked()
    property BluetoothLocalDevice localDevice

    Item {
        width: parent.width * 0.75
        height: 50

        Rectangle {
            anchors {
                centerIn: parent
                fill: parent
                topMargin: 5
                bottomMargin: 5
            }
            radius: 10

            MouseArea {
                anchors.fill: parent
                onClicked: row.customClicked()
            }
        }
    }

    Item {
        width: 50
        height: 50

        RoundButton {
            id: button
            height: 40
            width: 40
            anchors.centerIn: parent
            background: Image {
                id: backgroundImage
                anchors.fill: parent
                source: "img/bluetooth_disabled.png"
            }
            scale: pressed ? 1.1 : 1
            state: "disabled"

            Behavior on scale {
                NumberAnimation { duration: 100; easing.type: Easing.Linear }
            }

            onClicked: {
                state = state == "disabled" ? "connecting" :
                        state == "connecting" ? "enabled" : "disabled"
            }

            states: [
                State {
                    name: "disabled"
                    PropertyChanges {
                        target: backgroundImage
                        source: "img/bluetooth_disabled.png"
                    }
                },
                State {
                    name: "connecting"
                    PropertyChanges {
                        target: backgroundImage
                        source: "img/bluetooth_connecting.png"
                    }

                },
                State {
                    name: "enabled"
                    PropertyChanges {
                        target: backgroundImage
                        source: "img/bluetooth_enabled.png"
                    }
                }
            ]
        }
    }
}
