import QtQuick 2.0

Rectangle {
    id: listCompanent
    color: "#292F3F"
    radius: 10
    width: 260
    height: 400
    clip: true
    state: "closed"
    onFocusChanged: {
        if (!focus) state = closed
    }

    Item {
        id: header
        height: 40
        width: parent.width
        anchors.top: parent.top

        Text {
            id: headerText
            color: "#FCFFFF"
            text: qsTr("Bluetooth")
            font.bold: true
            font.pointSize: 10

            anchors {
                left: parent.left
                leftMargin: 10
                verticalCenter: parent.verticalCenter
            }
        }

        SwitchButton {
            anchors {
                right: parent.right
                verticalCenter: parent.verticalCenter
            }
        }

        Rectangle {
            height: 2
            color: "#2D78D5"
            width: 50
            anchors {
                left: parent.left
                bottom: parent.bottom
            }
        }
    }

    ListView {
        id: listContent
        width: parent.width
        anchors {
            top: header.bottom
            bottom: footer.top
        }
        clip: true

        model: ListModel {
            ListElement {
                category: "Connected"; name: "Device 6 (Connected)"
            }
            ListElement {
                category: "Connected"; name: "Device 7 (Connected)"
            }
            ListElement {
                category: "Available"; name: "Device 3 (Available)"
            }
            ListElement {
                category: "Available"; name: "Device 4 (Available)"
            }
            ListElement {
                category: "New"; name: "Device 5 (New)"
            }
        }

        section {
            property: "category"
            criteria: ViewSection.FullString
            delegate: Item {
                height: 30
                width: parent.width

                Text {
                    id: pairedSectionText
                    color: "#FEFFFF"
                    text: qsTr("Paired devices")
                    font.bold: true
                    anchors {
                        left: parent.left
                        leftMargin: 10
                        verticalCenter: parent.verticalCenter
                    }
                }
            }
        }

        delegate: Item {
            width: parent.width
            height: 44

            Row {
                anchors.fill: parent

                Item {
                    height: 40
                    width: 40

                    Image {
                        anchors.centerIn: parent
                        height: 20
                        width: 20
                        source: "qrc:/img/bluetooth_icon.png"
                    }
                }

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    text: model.name
                    color: "white"
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("You have pressed: " + model.name)
                }
            }
        }
    }

    Rectangle {
        id: footer
        height: 55
        width: parent.width
        color: "#2B2E35"
        anchors.bottom: parent.bottom

        Text {
            id: footerText
            text: qsTr("More Bluetooth settings")
            color: "#2D78D5"
            anchors {
                left: parent.left
                leftMargin: 10
                verticalCenter: parent.verticalCenter
            }
        }
    }

    states: [
        State {
            name: "closed"
            PropertyChanges {
                target: listCompanent
                height: 0
            }
        }
    ]

    Behavior on height {
        NumberAnimation { duration: 600; easing.type: Easing.OutQuart }
    }
}
