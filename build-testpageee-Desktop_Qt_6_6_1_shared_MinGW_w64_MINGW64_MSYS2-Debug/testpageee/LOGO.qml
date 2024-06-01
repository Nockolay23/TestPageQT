import QtQuick

Item {
    id: root

    property alias imageSource: albumImage.source

    Image {
        id: albumImage

        anchors {
            horizontalCenter:  parent.horizontalCenter
            verticalCenter:    parent.verticalCenter
        }
        width:  500
        height: 500
    }
}
