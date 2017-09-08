import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    Rectangle{
        id: category
        anchors.fill: parent
        color: "#ffffff"
        radius: 8

        Rectangle{
            anchors.fill: parent
            anchors{ margins: 15}

            Image{
                id: addImg
                anchors{
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                width: 48
                height: 48
                source: "qrc:/asset/image/add.png"
            }

            Text{
                text: "添加分类"
                anchors{horizontalCenter: parent.horizontalCenter; top: addImg.bottom; topMargin: 5}
                color: "#8B3A3A"
                font{
                    family: "微软雅黑"
                    pixelSize: 13
                }
            }

            MouseArea{
                anchors.fill: addImg
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onClicked: {

                }
            }
        }
    }

    DropShadow{
        anchors.fill: category
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8
        samples: 17
        color: "#80000000"
        source: category
    }
}
