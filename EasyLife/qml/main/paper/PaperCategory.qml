import QtQuick 2.0
import QtGraphicalEffects 1.0
import "../paper" as HPaper

Item {
    id: categoryContainer

    property string title: "LDA相关"
    property string content: "关于LDA方面的论文,我就是用来测试的，就问你服不服，服不服，服不服";
    property int heartCount: 2

    Rectangle{
        id: category
        anchors.fill: parent
        color: "#ffffff";
        radius: 8

        Rectangle{
            anchors.fill: parent
            anchors{ margins: 15}

            Text{
                id: categoryTitle
                anchors.top: parent.top
                anchors.topMargin: 2
                text: categoryContainer.title
                color: "#000000"
                font{
                    family: "幼圆"
                    pixelSize: 13
                }
            }

            HPaper.LevelGroup{
                id: levelGroup
                anchors.right: parent.right
                anchors.top: parent.top
                starCount: 2
            }

            Text{
                id: categoryContent
                width: parent.width
                anchors{top: categoryTitle.bottom; topMargin: 10;}
                text: categoryContainer.content
                color: "#999999"
                font{
                    family: "楷体"
                    pixelSize: 11
                }
                wrapMode: Text.WordWrap
            }

            Text{
                text: "View More"
                anchors{horizontalCenter: parent.horizontalCenter; top: categoryContent.bottom; topMargin: 10}
                color: "#6B8E23"
                font{
                    family: "微软雅黑"
                    pixelSize: 13
                }
            }
        }
    }

    DropShadow{
        anchors.fill: category
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8
        samples: 17
        color: "#80000000"
        source: category
    }
}
