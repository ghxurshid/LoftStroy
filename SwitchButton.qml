import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

Item {
    id: switchButton
    height: 40
    width: 44

    Switch {
        anchors.centerIn: parent
        indicator: Rectangle {
            id: switchIndicator
            color: "black"
            height: 14
            width: 14
            radius: 7
            state: "off"
            anchors.verticalCenter: parent.verticalCenter

            states: [
                State {
                    name: "on"
                    PropertyChanges {
                        target: switchIndicator
                        x: 0
                    }
                },
                State {
                    name: "off"
                    PropertyChanges {
                        target: switchIndicator
                        x: 20
                    }
                }
            ]

            Behavior on x {
                NumberAnimation { duration: 100; easing.type: Easing.OutCubic }
            }
        }

        background: Rectangle {
            width: 40
            height: 20
            radius: 10
            color: "#62C2FF"
            anchors {
                centerIn: parent
                verticalCenter: parent.verticalCenter
            }

            MouseArea {
                anchors.fill: parent
                onClicked: switchIndicator.state = switchIndicator.state == "on" ? "off" : "on"
            }
        }
    }
}


