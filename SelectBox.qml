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
        opacity: down ? 1 : 0.9

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#545763" } // Начальный цвет
            GradientStop { position: 1.0; color: "#34353D" } // Конечный цвет
        }

        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
            spread: 0.2
            radius: 8
            samples: 8
            color: "#34353D"
        }
    }

    contentItem: Text {
        text: parent.currentText
        color: "white"
        opacity: currentIndex > 0 ? 1 : 0.3
        font.bold: true
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        padding: 10
        elide: Text.ElideRight
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
    delegate: ItemDelegate {
        id: delegate
        width: selectBox.width
        text: modelData // Отображаем текст из модели данных

        background: Rectangle {
            width: selectBox.width
            color: selectBox.currentIndex === index ? "lightblue" : "white" // Выбранный элемент будет голубым
        }

        contentItem: Text {
            text: modelData // Отображаем текст
            anchors.centerIn: parent
        }

        onClicked: selectBox.currentIndex = index // Выбор текущего элемента по клику
    }
}



