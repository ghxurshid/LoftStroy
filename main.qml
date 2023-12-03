import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    visible: true
    width: 1024
    height: 768
    title: "Modern Window"
    color: "#27282C"

    // Задаем стиль для фона окна
    Rectangle {
        objectName: "left-panel"
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#353A40" } // Начальный цвет
            GradientStop { position: 1.0; color: "#16171C" } // Конечный цвет
        }
        radius: 18
        anchors {
            margins: 10
            rightMargin: parent.width - 310
        }

        ComboBox {
            id: comboBox
            width: 200
            model: ["Вариант 1", "Вариант 2", "Вариант 3"] // Модель данных для ComboBox

            // Кастомизация внешнего вида ComboBox
                    background: Rectangle {
                        color: "#f0f0f0"
                        border.color: "black"
                        radius: 5
                    }

                    contentItem: Text {
                        text: comboBox.currentText
                        color: "blue"
                        font.bold: true
                        font.pixelSize: 16
                        verticalAlignment: Text.AlignVCenter
                        padding: 5
                    }

                    indicator: Item {
                        width: 20
                        height: 20
                        Rectangle {
                            anchors.centerIn: parent
                            width: 10
                            height: 2
                            color: comboBox.activeFocus ? "lightgreen" : "lightgray"
                        }
                    }

            // Обработчик изменения выбора
            onActivated: {
                console.log("Выбрано: " + currentText)
            }
        }

    }
}
