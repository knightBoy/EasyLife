import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {
    anchors.fill: parent
    color: "#00000000"

    ScrollView{
        anchors.fill: parent

        //列表
        ListView{
            id: listview
            anchors.fill: parent

            spacing: 5

            //ListItem
            delegate: Rectangle{
                width: parent.width
                height: 80
                color: "#ffffff"
                radius: 4

                Rectangle{
                    anchors{
                        fill: parent
                        leftMargin: 10
                        topMargin: 10
                        rightMargin: 10
                        bottomMargin: 5
                    }

                    Image{
                        id: stateImg
                        width: 16
                        height: 16
                        source: "qrc:/asset/image/ok.png"
                    }

                    Text{
                        id: problemNum
                        anchors{left: stateImg.right; leftMargin: 5}
                        text: number
                        color: "#777777"
                        font.family: "微软雅黑"
                        font.pixelSize: 12
                    }

                    Text{
                        id: problemTitle
                        anchors{left: problemNum.right; leftMargin: 3}
                        text: title
                        color: "#000000"
                        font.family: "微软雅黑"
                        font.pixelSize: 12
                    }

                    //内容
                    Text{
                        id: problemContent
                        anchors{top: stateImg.bottom; topMargin: 5; left: parent.left; leftMargin: 20}
                        text: content
                        color: "#777777"
                        font.family: "微软雅黑"
                        font.pixelSize: 11
                        wrapMode: Text.WordWrap
                        maximumLineCount: 2
                    }

                    //标签
                    Rectangle{
                        id: labelContainer
                        anchors{
                            bottom: parent.bottom
                            left: parent.left
                            leftMargin: 5
                        }
                        width: label.width + 20
                        height: label.height + 6
                        border.width: 1
                        border.color: "#CCCCCC"
                        radius: 3

                        Text{
                            id: label
                            anchors{horizontalCenter: parent.horizontalCenter; verticalCenter: parent.verticalCenter}
                            color: "#777777"
                            text: labelTxt
                            font.family: "幼圆"
                            font.pixelSize: 10
                        }
                    }

                    //截止时间
                    Rectangle{
                        id: deadLineContainer
                        anchors{
                            bottom: parent.bottom
                            left: labelContainer.right
                            leftMargin: 5
                        }
                        width: deadLine.width + 20
                        height: deadLine.height + 6
                        border.width: 1
                        border.color: "#ff0000"
                        radius: 3

                        Text{
                            id: deadLine
                            anchors{horizontalCenter: parent.horizontalCenter; verticalCenter: parent.verticalCenter}
                            color: "#ff0000"
                            text: deadLineTxt
                            font.family: "幼圆"
                            font.pixelSize: 10
                        }
                    }

                    Image{
                        width: 16
                        height: 16
                        anchors{bottom: parent.bottom; right: parent.right;}
                        source: "qrc:/asset/image/edit.png"
                    }
                }

            }

            //数据
            model: ListModel{
                id: listModel
                ListElement{
                    number: qsTr("#57")
                    title: qsTr("完成问答页面的前端编码设置");
                    content: qsTr("情感分析相关测试,以及编码实现")
                    labelTxt: qsTr("本机")
                    deadLineTxt: qsTr("2017-09-04")
                }
                ListElement{
                    number: qsTr("#57")
                    title: qsTr("完成问答页面的前端编码设置")
                    content: qsTr("情感分析相关测试,以及编码实现")
                    labelTxt: qsTr("本机")
                    deadLineTxt: qsTr("2017-09-04")
                }
            }
        }


        //滑动条样式定制
        style: ScrollViewStyle{
            decrementControl: Item{
                visible: false
            }
            incrementControl: Item{
                visible: false
            }
            /*
            scrollBarBackground: Rectangle{
                width: 10
                height: 620
                color: "#00000000"

                Rectangle{
                   width: 5
                   height: parent.height
                   anchors{top: parent.top; right: parent.right}
                   color: "#EEEEEE"
                }
            }
            /*
            handle: Rectangle{
                width: 10
                height: 300
                color: "#ff0000"
            }
            */
        }
    }

}
