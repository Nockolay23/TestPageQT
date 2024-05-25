import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    visibility: Window.FullScreen // Открываем окно в полноэкранном режиме
    title: qsTr("Меню Тестов")
    color: "#A8D0E6" // Цвет фона окна

    StackView {
        id: stackView
        initialItem: menuPage
        anchors.fill: parent
    }

    Component {
        id: menuPage

        Item {
            anchors.fill: parent

            Column {
                spacing: 20
                anchors.centerIn: parent

                Button {
                    width: Screen.width*0.5
                    height: 50
                    text: qsTr("Тест передачи цвета")
                    font.pixelSize: 30
                    background: Rectangle {
                            color: "#FEFFFF"// Цвет фона кнопки
                            radius: 10
                        }
                    onClicked: {
                        stackView.push("ColorTestPage.qml")
                    }
                }

                Button {
                    width: Screen.width*0.5
                    height: 50
                    text: qsTr("Тест адаптации экрана")
                    font.pixelSize: 30
                    background: Rectangle {
                            color: "#FEFFFF"// Цвет фона кнопки
                            radius: 10
                        }
                    onClicked: {
                        stackView.push("ScreenAdaptationTestPage.qml")
                    }
                }

                Button {
                    width: Screen.width*0.5
                    height: 50
                    text: qsTr("Тест работы жестов сенсора")
                    font.pixelSize: 30
                    background: Rectangle {
                            color: "#FEFFFF"// Цвет фона кнопки
                            radius: 10
                        }
                    onClicked: {
                        stackView.push("SensorGesturesTestPage.qml")
                    }
                }
            }
        }
    }
}
