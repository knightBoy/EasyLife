import QtQuick 2.0

Item {
    property string title: qsTr("B站视频");
    property string moreUrl: ""

    width: parent.width

    //标题
    Text{
        id: titleElem
        anchors{left: parent.left; top: parent.top;}
        text: title
        font.family: "幼圆"
        font.pixelSize: 14
        color: "#444444"
    }

    //更多
    Text{
        id: moreElem
        anchors{right: parent.right; top: parent.top;}
        text: qsTr("更多");
        font.family: "幼圆"
        font.pixelSize: 14
        color: "#444444"
    }

    //横线
    Rectangle{
        anchors{top: titleElem.bottom; topMargin: 5}
        width: parent.width
        height: 1
        color: "#888888"
    }
}
