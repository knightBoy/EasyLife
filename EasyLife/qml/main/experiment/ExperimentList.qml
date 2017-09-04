import QtQuick 2.0
import "../experiment" as HExperiment

Item {
    property string title: ""
    property string titleColor: ""

    HExperiment.ListTitle{
        id: listTitle
        height: 30
        width: parent.width
        txt: title
        bgColor: titleColor
    }

    HExperiment.ListView{
        id: listView
        anchors{
            top: listTitle.top
            topMargin: 40
            left: parent.left
        }

        width: 250
        height: 620
    }
}
