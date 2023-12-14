import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 1024
    height: 768
    title: "Modern Window"
    color: "#27282C"

    Rectangle {
        id: left_panel
        objectName: "left-panel"
        anchors {
            fill: parent
            margins: 10
            rightMargin: parent.width - 310
        }
        clip: true
        color: "#333C43"
        radius: 18

        Model {
            id: listModel
        }

        Column {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 10

            BluetoothDeviceStatus {
                id: bluetoothDeviceStatus
                onCustomClicked: {
                    bluetoothDeviceList.state = bluetoothDeviceList.state == "" ? "closed" : ""
                }
            }

            Rectangle {
                height: 2
                color: "#969696"
                anchors {
                    left: parent.left
                    right: parent.right
                }
            }            

            CommandButton {
                id: allCommand
                text: qsTr("ALL")
            }

            CommandButton {
                id: randomCommand
                text: qsTr("RANDOM")
            }

            Item {
                height: 44
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: 10
                }

                SelectBox {
                    id: entranceSelect
                    model: listModel
                    onActivated: {
                        if (index === 0) apartmentSelect.model = null
                        floorSelect.model = model.get(index).floorData
                    }
                }

                SwitchButton {

                }
            }

            Item {
                height: 44
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: 10
                }

                SelectBox {
                    id: floorSelect
                    onActivated: {
                        apartmentSelect.model = model.get(index).flatData
                    }
                }

                SwitchButton {

                }
            }

            Item {
                height: 44
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: 10
                }

                SelectBox {
                    id: apartmentSelect
                }

                SwitchButton {

                }
            }

            Image {
                id: name
                height: 33
                width: 179
                source: "img/selectbox_background.png"
            }
        }

        BluetoohDevicesList {
            id: bluetoothDeviceList
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.top: parent.top
            anchors.topMargin: 60
        }
    }

    Image {
        fillMode: Image.PreserveAspectFit
        anchors {
            fill: parent
            margins: 10
            leftMargin: 320
        }

        source: apartmentSelect.currentIndex > 0 ? apartmentSelect.model.get(apartmentSelect.currentIndex).image : floorSelect.currentIndex > 0 ? "qrc:/img/plan.png" : entranceSelect.currentIndex > 0 ? "qrc:/img/plan.png" : "qrc:/img/logo.jpg"
    }
}
