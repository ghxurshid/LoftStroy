import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ComboBox {
    anchors.fill: parent
    anchors.rightMargin: parent.width * 0.20
    background: Rectangle {
        color: "#f0f0f0"
        border.color: "black"
        radius: 5
    }

//        contentItem: Text {
//            text: parent.currentText
//            color: "blue"
//            font.bold: true
//            font.pixelSize: 16
//            verticalAlignment: Text.AlignVCenter
//            padding: 5
//        }

//        indicator: Item {
//            width: 20
//            height: 20
//            Rectangle {
//                anchors.centerIn: parent
//                width: 10
//                height: 2
//                color: parent.activeFocus ? "lightgreen" : "lightgray"
//            }
//        }
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



