import QtQuick 2.0
import "./paper" as HPaper

Item {
    anchors.fill: parent

    Image{
        anchors.fill: parent
        source: "qrc:/asset/image/tab_paper_background.png"
        fillMode: Image.Tile
    }

    Grid{
        anchors{fill: parent; margins: 20}
        rows: 4
        columns: 4
        rowSpacing: 40
        columnSpacing: 26

        HPaper.PaperCategory{
            width: 180
            height: 110
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
            title: qsTr("神经网络")
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
            title: qsTr("情感分析")
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
            title: qsTr("实体关系")
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
            title: qsTr("词法分析")
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
            title: qsTr("主题模型")
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
        }
        HPaper.PaperCategory{
            width: 180
            height: 110
        }
    }
}
