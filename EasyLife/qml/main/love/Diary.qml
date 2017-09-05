import QtQuick 2.0
import Qt.labs.controls 1.0
import "../../components" as HComponents

Item {

    Rectangle{
        width: parent.width
        height: 200
        radius: 4
        color: "#EEffffff"

        Item{
            anchors.fill: parent
            anchors.margins: 13

            //标题栏
            Item{
                id: title
                anchors{topMargin: 15; top: parent.top; right: parent.right; left: parent.left}

                HComponents.CircleImage{
                    id: avatar
                    anchors{verticalCenter: parent.verticalCenter}
                    imgRadius: 28
                    imgSource: "qrc:/asset/image/avatar.png"
                }

                Text{
                    id: name
                    anchors{left: avatar.right; leftMargin: 10; verticalCenter: parent.verticalCenter}
                    text: qsTr("有了猫的鱼")
                    color: "#555555"
                    font.pixelSize: 12
                    font.family: "幼圆"
                }

                Text{
                    id: time
                    anchors{left: name.right; leftMargin: 10; verticalCenter: parent.verticalCenter}
                    text: qsTr("2017-09-05 14:15:30")
                    color: "#777777"
                    font.pixelSize: 12
                    font.family: "幼圆"
                }

                //年龄
                Rectangle{
                    width: age.width + 12
                    height: age.height + 4
                    anchors{left: time.right; leftMargin: 10; verticalCenter: parent.verticalCenter}
                    color: "lightblue"
                    radius: 4

                    Text{
                        id: age
                        anchors{horizontalCenter: parent.horizontalCenter; verticalCenter: parent.verticalCenter}
                        text: qsTr("22")
                        color: "#ffffff"
                        font.pixelSize: 12
                        font.family: "幼圆"
                    }
                }

                //右侧
                Item{
                    anchors{right: title.right; rightMargin: 110; verticalCenter: parent.verticalCenter}

                    HComponents.ImageLabel{
                        id: place
                        anchors{right: parent.right; verticalCenter: parent.verticalCenter}
                        imgSource: "qrc:/asset/image/place.png"
                        txt: qsTr("湖北省-武汉市")
                    }

                    Text{
                        id: commentNum
                        anchors{verticalCenter: parent.verticalCenter; right: place.left; rightMargin: 10}
                        text: qsTr("评论 5")
                        color: "#555555"
                        font.pixelSize: 12
                        font.family: "幼圆"
                    }
                }
            }

            //内容栏
            Text{
                id: content
                anchors{top: title.bottom; topMargin: 20; right: parent.right; bottomMargin: 20; left: parent.left}
                text: qsTr("开学第一天，小侄子放学回来愁眉苦脸，我关切的问是不是换了新学校不习惯了。他摇摇头说:不是的，是考试了。我说:考试就考试啊，有什么大不了的。小侄子白了我一眼大吼到:说的轻松，好像你考完不用挨打似的！")
                wrapMode: Text.WordWrap
                font.family: "微软雅黑"
                font.pixelSize: 13
            }

            //图片区域
            Grid{
                id: pictures
                rows: 1
                columns: 4
                columnSpacing: 2
                anchors{top: content.bottom; topMargin: 5}

                Image{
                    width: 56
                    height: 56
                    source: "qrc:/asset/image/avatar.png"
                    fillMode: Image.PreserveAspectCrop
                }
                Image{
                    width: 56
                    height: 56
                    source: "qrc:/asset/image/avatar.png"
                    fillMode: Image.PreserveAspectCrop
                }
                Image{
                    width: 56
                    height: 56
                    source: "qrc:/asset/image/avatar.png"
                    fillMode: Image.PreserveAspectCrop
                }
                Image{
                    width: 56
                    height: 56
                    source: "qrc:/asset/image/avatar.png"
                    fillMode: Image.PreserveAspectCrop
                }
            }

            //评论区
            TextField{
                id: comment
                width: parent.width * 0.9
                anchors{top: pictures.bottom; left: parent.left; topMargin: 15; bottom: parent.bottom }
                background: Rectangle{
                    border.color: "#AAAAAA"
                    border.width: 1
                    radius: 4
                }
                placeholderText: qsTr("在这里输入评论")
            }

            //发送按钮
            HComponents.LabelButton{
                anchors{left: comment.right; leftMargin: 15; top: comment.top}
                text: qsTr("发送")
                btHeight: comment.height
                btWidth: parent.width * 0.06
                btFontSize: 10
                btRadius: 3
            }
        }

    }

}
