import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {

    property int imgRadius
    property string imgSource

    id: circleImage
    width: imgRadius
    height: imgRadius


    Image{
        id: imageView
        source: circleImage.imgSource
        smooth: true
        anchors.fill: parent
        visible: false
    }

    Rectangle{
        id: mask
        anchors.fill: parent
        radius: width/2
        visible: false
    }

    OpacityMask {
        anchors.fill: parent
        source: imageView
        maskSource: mask
    }
}
