import QtQuick 2.0

Item{
    property string content: qsTr("你确定执行这个操作吗？")

    //信号
    signal yesClick()

    id: messageBox
    width: 300

    Image{
        height: 50
        width: 50
        fillMode: Image.Stretch
        x: (parent.width - width)/2
        z: 2
        id: boxImage
        sourceSize{height:50; width: 50}
        source: "qrc:/asset/image/box_image.png"
    }

    //真正的消息框
    Rectangle {
        y: boxImage.height/2
        z: 1
        width: 300
        height: 150 + contentText.height
        color: "#333333"

        Text{
            id: contentText
            anchors{top: parent.top; topMargin: 35; horizontalCenter: parent.horizontalCenter; leftMargin: 10; rightMargin: 10}
            text: messageBox.content
            font.pixelSize: 14
            font.family: "微软雅黑"
            font.bold: true
            //color: "#AC6475"
            color: "#ffffff"
        }

        //按钮组
        Row{
            id: buttons
            anchors{horizontalCenter: parent.horizontalCenter; top: contentText.bottom; topMargin: 30; bottomMargin: 20}

            LabelButton{
                id: okBt
                btWidth: 80
                btHeight: 30
                text: qsTr("确定")
                btFondSize: 10

                onClicked: {
                    messageBox.yesClick()
                }
            }

            spacing: 20

            LabelButton{
                id: cancelBt
                btWidth: 80
                btHeight: 30
                text: qsTr("取消")
                btFondSize: 10

                onClicked: {
                    mainwindow.close()
                }
            }
        }
    }
}
