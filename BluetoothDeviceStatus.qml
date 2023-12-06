import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

Row {
    id: row
    spacing: 10
    anchors {
        left: parent.left
        right: parent.right
        margins: 10
    }

    signal customClicked()

    Item {
        width: parent.width * 0.75
        height: 50

        Rectangle {
            anchors {
                centerIn: parent
                fill: parent
                topMargin: 10
                bottomMargin: 10
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

        Button {
            height: 25
            width: 25
            anchors.centerIn: parent
            background: Rectangle {
                color: "blue"
                radius: 12
            }

            Behavior on scale {
                // Анимация масштабирования при нажатии
            }

            onClicked: {
                // Изменение масштаба при нажатии
                myButton.scale = 0.9;
                // Ваш код действий при нажатии...
            }
        }
    }
}
