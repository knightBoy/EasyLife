import QtQuick 2.0
import QtGraphicalEffects 1.0

Item{
    property string imgSource
    property string title: qsTr("【史诗级教学】 学会了我的");
    property string detail: qsTr("【史诗级教学】 学会了我的着装，剩下的只要平A就能")
    property string url: "http://www.baidu.com"

    Rectangle {
        id: videoBox
        anchors.fill: parent
        visible: false


        //遮罩
        Rectangle{
            id: shade
            z: 3
            anchors.fill: parent
            color: "#72000000"
            opacity: 0

            Text{
                anchors{
                    left: parent.left
                    right: parent.right
                    top: parent.top
                    leftMargin: 15
                    rightMargin: 15
                    topMargin: 15
                }

                wrapMode: Text.WordWrap
                text: detail
                color: "#ffffff"
                font.pixelSize: 13
            }
        }

        //图片
        Image{
            id: img
            anchors.fill: parent
            source: imgSource
            fillMode: Image.PreserveAspectCrop
        }

        //标题
        Rectangle{
            width: parent.width
            height: 22
            anchors{left: parent.left; right: parent.right; bottom: parent.bottom}
            color: "#55000000"

            Text{
                id: titleElem
                anchors{horizontalCenter: parent.horizontalCenter; verticalCenter: parent.verticalCenter}
                text: title
                color: "#ffffff"
                font.pixelSize: 13
            }

        }

    }

    MouseArea{
        z: 3
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onEntered: {
            shade.opacity = 1
        }
        onExited: {
            shade.opacity = 0
        }
        onClicked: {
            Qt.openUrlExternally(url)
        }
    }

    DropShadow{
        anchors.fill: videoBox
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8
        samples: 17
        color: "#80000000"
        source: videoBox
    }

}
