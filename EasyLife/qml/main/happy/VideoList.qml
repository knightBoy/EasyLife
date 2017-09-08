import QtQuick 2.0
import "../happy" as HHappy

Item {
    HHappy.ListTitle{
        id: title
        height: 30
        title: qsTr("B站视频")
    }

    Grid{
        anchors{top: title.bottom;}
        rows: 2
        columns: 4
        columnSpacing: 25
        rowSpacing: 25

        HHappy.VideoBox{
            width: 180
            height: 110
            imgSource: "qrc:/asset/image/video.png"
        }
        HHappy.VideoBox{
            width: 180
            height: 110
            imgSource: "qrc:/asset/image/video.png"
        }
        HHappy.VideoBox{
            width: 180
            height: 110
            imgSource: "qrc:/asset/image/video.png"
        }
        HHappy.VideoBox{
            width: 180
            height: 110
            imgSource: "qrc:/asset/image/video.png"
        }
        HHappy.VideoBox{
            width: 180
            height: 110
            imgSource: "qrc:/asset/image/video.png"
        }
        HHappy.VideoBox{
            width: 180
            height: 110
            imgSource: "qrc:/asset/image/video.png"
        }
        HHappy.VideoBox{
            width: 180
            height: 110
            imgSource: "qrc:/asset/image/video.png"
        }
        HHappy.VideoBox{
            width: 180
            height: 110
            imgSource: "qrc:/asset/image/video.png"
        }
    }

}
