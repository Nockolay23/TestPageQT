import QtQuick 2.15
import QtQuick.Controls 2.15



Item {

    id: colorTestPage
    anchors.fill: parent

    property color bgColor: "#FFFFFF" // Изначальный цвет фона

    Rectangle {
        anchors.fill: parent
        color: colorTestPage.bgColor // Цвет фона привязан к свойству bgColor

        Text {
            anchors.centerIn: parent
            text: "Нажмите на кнопку, чтобы изменить цвет"
            font.pixelSize: 20
        }
    }

    property url backgroundImage: "./image/grey.png" // Укажите путь к изображению

    Image {
        id: image
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit // Режим заполнения изображения
        visible: true // Начально изображение не видимо
    }


    StackView {
        id: stackView
        initialItem: upMenuColorPage
        anchors.fill: parent
    }

    Component {
        id: upMenuColorPage

        Item {
            anchors.fill: parent

            Row {

                anchors {

                top: parent.top
                horizontalCenter: parent.horizontalCenter
                margins: 10

                }
                spacing: 20


                Button {
                    width: Screen.width*0.2
                    height: 50
                    text: qsTr("Поменять цвет фона")
                    font.pixelSize: 30
                    background: Rectangle {
                            color: "#FEFFFF"// Цвет фона кнопки
                            radius: 10
                        }
                    onClicked: {
                        colorTestPage.bgColor = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
                    }
                }

                Button {
                    width: Screen.width*0.2
                    height: 50
                    text: qsTr("Проверить оттенки серого")
                    font.pixelSize: 30
                    background: Rectangle {
                        color: "#FEFFFF"// Цвет фона кнопки
                        radius: 10
                    }

                    onClicked: {
                        colorTestPage.bgColor = "transparent" // Прозрачный фон
                        image.source = colorTestPage.backgroundImage // Устанавливаем изображение фона
                        image.visible = true // Делаем изображение видимым
                    }
                }

                Button {
                    width: Screen.width*0.2
                    height: 50
                    text: qsTr("Назад")
                    font.pixelSize: 30
                    background: Rectangle {
                            color: "#FEFFFF"// Цвет фона кнопки
                            radius: 10
                        }
                    onClicked: {
                        stackView.pop()
                    }
                }
            }
        }
    }
}


