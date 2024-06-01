//import related modules
import QtQuick
import QtQuick.Controls



ApplicationWindow {
    id: window
    width: 400
    height: 500
    visible: true
    title: "TestPage"

    // massive of colors
    property var colorArray: [
        "#FF0000",
        "#00FF00",
        "#0000FF",
        "#FFFF00",
        "#FF00FF",
        "#00FFFF",
        "#FF1493",
        "#000000",
        "#808080",
        "#FFFFFF",
        "#FF00FF",
        "#800080",
        "#800000",
    ]

    property int colorIndex: 0

    // swipe pages
    SwipeView {
        id: view
        currentIndex: 0         // start page
        anchors.fill: parent    // for full screen

        // first page //
        Item {
            id: firstPage

            Rectangle {
              id: topbar

              anchors {
                  top:   parent.top
                  left:  parent.left
                  right: parent.right
              }
              height: 50
              color: "#5F8575"
            }
            Rectangle {
                id: mainSection
                LOGO {
                    width: 200
                    height: 200
                    // Specify the image source
                    imageSource: "assets/images/logo.jpg"
                    anchors.centerIn: parent
                }
                anchors {
                    top: topbar.bottom
                    bottom: bottombar.top
                    left: parent.left
                    right: parent.right
                }
                color: "#1e1e1e"
            }
            Rectangle {
                id: bottombar

                anchors {
                    bottom: parent.bottom
                    left:   parent.left
                    right:  parent.right
                }
               height: 100
               color: "#333333"
            }
        }
        // second page //
        Item {
            Rectangle {
              id: topbar1

              anchors {
                  top:   parent.top
                  left:  parent.left
                  right: parent.right
              }
              height: 50
              color: "#5F8575"
            }
            Rectangle {
                id: mainSection1
                Rectangle {
                    id: myRectangle
                    width: 400
                    height: 200
                    anchors.centerIn: parent
                    color: colorArray[colorIndex]
                }
                anchors {
                    top: topbar1.bottom
                    bottom: bottombar1.top
                    left: parent.left
                    right: parent.right
                }
                color: "#1e1e1e"
            }
            Rectangle {
                id: bottombar1

                anchors {
                    bottom:parent.bottom
                    left:  parent.left
                    right: parent.right
                }
               height: 100
               color: "#333333"
            }

            Button {
                text: "change color"
                width: 200
                height: 100

                background: Rectangle {
                    color: "#8B008B"
                }

                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: {
                    // Increment the color index
                    colorIndex = (colorIndex + 1) % colorArray.length

                    // Update the rectangle's color with the new index
                    myRectangle.color = colorArray[colorIndex]
                }
            }
        }

        // third page //
        Item {
            Rectangle {
              id: topbar2

              anchors {
                  top:   parent.top
                  left:  parent.left
                  right: parent.right
              }
              height: 50
              color: "#5F8575"
            }
            Rectangle {
                id: mainSection2
                anchors {
                    top: topbar2.bottom
                    bottom: bottombar2.top
                    left: parent.left
                    right: parent.right
                }
                color: "#1e1e1e"
            }
            Rectangle {
                id: bottombar2

                anchors {
                    bottom:parent.bottom
                    left:  parent.left
                    right: parent.right
                }
               height: 100
               color: "#333333"
            }

            Text {
                id: content
                text: "We make roboooooooooooooooooots"
                font.pixelSize: 600
                x: -hbar.position * width
                y: -pbar.position * height
            }

            ScrollBar {
                id: pbar
                hoverEnabled: true
                active: hovered || pressed
                orientation: Qt.Vertical
                size: frame.height / content.height
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.bottom: parent.bottom
            }

            ScrollBar {
                id: hbar
                hoverEnabled: true
                active: hovered || pressed
                orientation: Qt.Horizontal
                size: frame.width / content.width
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
            }
        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}

