import QtQuick 2.0
import QtQuick.Controls 1.4
import "./love" as HLove

Item {

    Image{
        anchors.fill: parent
        source: "qrc:/asset/image/tab_love_background.png"
        fillMode: Image.Tile
        opacity: 0.3
    }

    Rectangle{
        anchors{fill: parent; margins: 20}
        color: "#00000000"

        //这里需要一个ScrollView
        HLove.DiaryList{
            anchors.fill: parent
        }
    }
}
