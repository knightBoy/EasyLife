import QtQuick 2.0

Item {
    property string txt: qsTr("进行中");
    property string bgColor: "";

    Rectangle{
        anchors.fill: parent
        color: bgColor
        radius: 8

        Text{
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                margins: 8
            }

            text: txt
            color: "#ffffff"
            font.pixelSize: 13
            font.family: "微软雅黑"
        }
    }
}
