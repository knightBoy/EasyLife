import QtQuick 2.0
import "./experiment" as HExperiment

Item {
    anchors.fill: parent

    Image{
        anchors.fill: parent
        source: "qrc:/asset/image/tab_experiment_background.png"
        fillMode: Image.Tile
        opacity: 0.2
    }

    Rectangle{
        anchors.fill: parent
        anchors.margins: 20
        color: "#00000000"

        HExperiment.ExperimentList{
            id: before
            anchors.left: parent.left
            width: 250
            height: 635
            title: qsTr("待办中   --10--")
            titleColor: "#FF908B"
        }

        HExperiment.ExperimentList{
            id: doing
            anchors{left: before.right; leftMargin: 25}
            width: 250
            height: 635
            title: qsTr("进行中   --10--")
            titleColor: "#90C381"
        }

        HExperiment.ExperimentList{
            id: after
            anchors{left: doing.right; leftMargin: 25}
            width: 250
            height: 635
            title: qsTr("已完成   --10--")
            titleColor: "#20B1AA"
        }
    }
}
