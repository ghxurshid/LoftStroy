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

            Row {
                spacing: 10
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: 10
                }

                Item {
                    width: parent.width * 0.75
                    height: 55

                    Rectangle {
                        anchors {
                            fill: parent
                            topMargin: 10
                            bottomMargin: 10
                            verticalCenter: parent.verticalCenter
                        }
                        radius:

                    }
                }
                ComboBox {
                    id: comboBox
                    width: 200
                    visible: false
                    anchors.verticalCenter: parent.verticalCenter


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

            Rectangle {
                height: 2
                color: "#969696"
                anchors {
                    left: parent.left
                    right: parent.right
                }
            }

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
            }

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
            }

            Row {
                spacing: 10
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: 10
                }

                ComboBox {
                    width: 200
                    anchors.verticalCenter: parent.verticalCenter

                    model: ["Вариант 1", "Вариант 2", "Вариант 3"]

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

                }

                Item {
                    width: 50
                    height: 50

                    Switch {
                        anchors.centerIn: parent
                    }
                }
            }

            Row {
                spacing: 10
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: 10
                }

                ComboBox {
                    width: 200
                    anchors.verticalCenter: parent.verticalCenter

                    model: ["Вариант 1", "Вариант 2", "Вариант 3"]

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

                }

                Item {
                    width: 50
                    height: 50

                    Switch {
                        anchors.centerIn: parent
                    }
                }
            }

            Row {
                spacing: 10
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: 10
                }

                ComboBox {
                    width: 200
                    anchors.verticalCenter: parent.verticalCenter

                    model: ["Вариант 1", "Вариант 2", "Вариант 3"]

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

                }

                Item {
                    width: 50
                    height: 50

                    Switch {
                        anchors.centerIn: parent
                    }
                }
            }
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
