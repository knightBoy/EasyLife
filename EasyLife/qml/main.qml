import QtQuick 2.0
import "./components" as HComponents
import "./main" as HMain

Rectangle{
    visible: true
    width: 1000
    height: 700

    Image{
        anchors.fill: parent
        source: "qrc:/asset/image/main_background.png"
    }

    //标题栏
    HComponents.TitleBar{
        id: titleBar
        width: parent.width
        height: 25
        title: "为简单生活而生 © 傲龙"

        onClose: {
            mainwindow.close()
        }
        onMax: {
            mainwindow.showMaximized()
        }
        onMin: {
            mainwindow.showMinimized()
        }
    }//titleBar

    //body
    Rectangle{
        id: body
        width: parent.width
        height: 675
        color: "#00000000"
        anchors{top: titleBar.bottom; left: parent.left}

        //左列选项列
        Rectangle{
            id: leftColumn
            width: 160
            height: parent.height
            anchors{left: parent.left; top: parent.top}
            color: "#00000000"

            //用户信息
            Row{
                id: userInfo
                anchors{horizontalCenter: parent.horizontalCenter; top:parent.top;topMargin: 30}
                //用户头像
                HComponents.CircleImage{
                    imgRadius: 30
                    imgSource: "qrc:/asset/image/avatar.png"
                }

                spacing: 15

                //用户名字
                Text{
                    anchors.verticalCenter: parent.verticalCenter
                    text: "KnightBoy"
                    color: "#ffffff"
                    font{pixelSize: 12; family: "微软雅黑"}
                }
            }

            HMain.MainMenu{
                id: mainMenu
                width: 160

                anchors{top: userInfo.bottom; topMargin: 30;}

                onClicked: {
                    contentTabview.changeTab(index)
                }
            }

            //进度条
            HComponents.ProgressBar{
                id: progressBar
                width: 120
                height: 10
                anchors{bottom: progressTip.top; horizontalCenter: parent.horizontalCenter; bottomMargin: 10}

                value: 0.7
            }

            //进度文字
            Text{
                id: progressTip
                width: parent.width
                text: getProgressTip(50)
                font.family: "微软雅黑"
                font.pixelSize: 11
                textFormat: Text.StyledText
                anchors.horizontalCenter: parent.horizontalCenter
                anchors{bottom: parent.bottom; bottomMargin: 15; left: parent.left; leftMargin: 28}
            }
        }

        //右侧功能区
        Rectangle{
            id: rightColumn
            width: 840-2
            height: parent.height - 2
            color: "#00000000"
            anchors.left: leftColumn.right

            HMain.TabView{
                id: contentTabview
            }
        }
    }//body

    //获得富文本进度提示
    function getProgressTip(progress){
        var res = '<center><font color="white">已完成<font color="orange">' + progress + '%</font>计划工作</font></center>'
        return res
    }
}
