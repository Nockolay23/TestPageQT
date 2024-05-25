import QtQuick 2.15

// Цветовой тест
Component {
    id: colorTest
    Rectangle {
        color: "lightblue"
        anchors.fill: parent
        Text {
            anchors.centerIn: parent
            text: "Тест сенсора"
            font.pixelSize: 20
        }
    }
}
