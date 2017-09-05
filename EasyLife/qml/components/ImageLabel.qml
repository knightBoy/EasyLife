import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    property int imgHeight: 16
    property int imgWidth: 16
    property string imgSource

    property string txt: qsTr("label")
    property int fontSize: 12
    property string fontColor: "#555555"
    property string fontFamily: "幼圆"

    Image{
        id: img
        anchors.verticalCenter: parent.verticalCenter
        width: imgWidth
        height: imgHeight
        source: imgSource
    }

    Label{
        anchors{left: img.right; leftMargin: 2; verticalCenter: parent.verticalCenter}
        text: txt
        color: fontColor
        font.pixelSize: fontSize
        font.family: fontFamily
    }
}
