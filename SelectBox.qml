import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

ComboBox {
    id: selectBox
    anchors.fill: parent
    anchors.rightMargin: parent.width * 0.20
    background: Rectangle {
        anchors.fill: selectBox
        color: "#2A333A"
        border.width: 1
        border.color: "#4A535A"
        radius: 3

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#323B42" } // Начальный цвет
            GradientStop { position: 1.0; color: "#232A30" } // Конечный цвет
        }

        DropShadow {
            anchors.fill: parent
            horizontalOffset: 3
            verticalOffset: 3
            radius: 5
            samples: 8
        }
    }

    contentItem: Text {
        text: parent.currentText
        color: "blue"
        font.bold: true
        font.pixelSize: 16
        verticalAlignment: Text.AlignVCenter
        padding: 5
    }

    indicator: Item {
        width: parent.height
        height: parent.height
        anchors.right: parent.right
        Rectangle {
            anchors.centerIn: parent
            width: parent.width / 4
            height: parent.height / 4
            color: "white"
            rotation: 45
        }
    }
    //        delegate: Item {
    //            width: parent.width
    //            height: 40
    //            Text {
    //                anchors.centerIn: parent
    //                text: model.text // Обращение к свойству text напрямую из ListModel
    //            }
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    parent.currentText = model.text
    //                }
    //            }
    //        }

}



