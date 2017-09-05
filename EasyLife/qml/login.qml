import QtQuick 2.5
import "./login" as HLogin
import "./components" as HComponets

Rectangle {
    visible: true
    width: 300
    height: 500
    color: "#00000000"

    Image{
        id: bgImg
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        fillMode: Image.TileHorizontally
        source: "qrc:/asset/image/background.png"
        opacity: 0.8
    }

    MouseArea {
        anchors.fill: parent
        property point previousPosition
        onPressed: {
            previousPosition = Qt.point(mouseX, mouseY)
        }
        onPositionChanged: {
            if(pressedButtons == Qt.LeftButton){
                var dx = mouseX - previousPosition.x
                var dy = mouseY - previousPosition.y
                mainwindow.setX(mainwindow.x + dx)
                mainwindow.setY(mainwindow.y + dy)
            }
        }

    }

    Text{
        anchors{
            left: parent.left
            top: parent.top
            leftMargin: 5
            topMargin: 5
        }

        text: qsTr("简单生活")
        color: "#ffffff"
        font.family: "幼圆"
        font.pixelSize: 12
    }

    Image{
        width: 20
        height: 20
        fillMode: Image.Stretch
        source: "qrc:/asset/image/close.png"
        anchors{
            top: parent.top
            right: parent.right
            topMargin: 5
            rightMargin: 5
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                Qt.quit()
            }
        }
    }

    //登录头像
    HComponets.CircleImage{
        id: avatar
        y : 50
        anchors.horizontalCenter: parent.horizontalCenter
        imgRadius: 100
        imgSource: "qrc:/asset/image/avatar.png"
    }

    Text{
        id: loginTips
        y: 170
        anchors.horizontalCenter: parent.horizontalCenter
        visible: false
        text: qsTr("这里显示提示")
        font:{family: "微软雅黑"}
        color: "#AC6475"
    }

    HLogin.LineInput{
        id: userName
        y: 250
        width: 220
        height: 25
        anchors.horizontalCenter: parent.horizontalCenter
        icon: "qrc:/asset/image/userName.png"
        hint: "knightBoy"
        passwordMode: false
    }

    HLogin.LineInput{
        id: password
        width: 220
        height: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors{top: userName.bottom; topMargin: 30}
        icon: "qrc:/asset/image/password.png"
        hint: "123456"
        passwordMode: true
    }

    HComponets.LabelButton{
        id: submitBtn
        anchors{top: password.bottom; topMargin: 40}
        anchors.horizontalCenter: avatar.horizontalCenter
        text: qsTr("登录")
        btHeight: 30
        btWidth: 220
        onClicked: {
            var res = mainwindow.varifyUser(userName.text, password.text);

            if(res === null || res.length === 0){
                loginTips.visible = false
                mainwindow.finish()
            }else{
                loginTips.text = res
                loginTips.visible = true
            }
        }
    }

    Text{
        id: tips
        text: qsTr("越简单生活，越具有美感")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: submitBtn.bottom
        anchors.topMargin: 30
        color: "#ffffff"
        font.pixelSize: 12
        font.family: "微软雅黑"
    }

    Text{
        id: copyright
        text: qsTr("Copyright ©傲龙 版权所有")
        anchors{horizontalCenter: parent.horizontalCenter; bottom: parent.bottom; bottomMargin: 10}
        color: "#AAAAAA"
        font.pixelSize: 9
        font.family: "微软雅黑"
    }
}
