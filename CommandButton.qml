import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

Button {
    height: 44
    anchors {
        left: parent.left
        right: parent.right
        margins: 10
    }
    background: Rectangle {
        color: "#68B8D1"
        radius: 5
    }

    contentItem: Text {
        text: parent.text // Используем текст кнопки
        color: "white"
        font.bold: true
        font.pixelSize: 16
        horizontalAlignment: Text.AlignLeft // Выравнивание текста влево
        verticalAlignment: Text.AlignVCenter // Вертикальное выравнивание по центру
        padding: 10 // Отступы текста от краев кнопки
        elide: Text.ElideRight // Обрезание текста, если он не помещается в кнопку
        width: parent.width // Ширина текста равна ширине родительского элемента (Button)
    }
}



