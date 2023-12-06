import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3


ApplicationWindow {
    visible: true
    width: 1024
    height: 768
    title: "Modern Window"
    color: "#27282C"

    // Задаем стиль для фона окна
    Rectangle {
        id: left_panel
        objectName: "left-panel"
        anchors {
            fill: parent
            margins: 10
            rightMargin: parent.width - 310
        }
        gradient: Gradient {
            GradientStop {
                position: 0.0; color: "#353A40"
            } // Начальный цвет
            GradientStop {
                position: 1.0; color: "#16171C"
            } // Конечный цвет
        }
        radius: 18

        Column {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 10

            BluetoothDeviceStatus {
                id: bluetoothDeviceStatus
                onCustomClicked: {
                    console.log("customClicked")
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

            }

            CommandButton {

            }

            ComboBoxWithSwitch {}

            ComboBoxWithSwitch {}

            ComboBoxWithSwitch {}
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

        source: "resource/scape.png"
    }
}
