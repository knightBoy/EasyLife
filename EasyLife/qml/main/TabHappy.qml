import QtQuick 2.0
import "./happy" as HHappy

Rectangle {
    anchors.fill: parent
    color: "#ffffff"

    Item{
       anchors.fill: parent
       anchors.margins: 20

       HHappy.VideoList{
           width: parent.width
       }
    }
}
