import QtQuick 2.0
import "../components" as HComponets

Item {
    property string title: ""

    id: titleBar
    width: parent.width

    signal max
    signal min
    signal close

    Rectangle{
        anchors.fill: parent
        color: "#000000"

        //图标
        Image{
            id: imgIcon
            width: 16
            height: 16
            anchors{verticalCenter: parent.verticalCenter; left: parent.left; leftMargin: 3}
            fillMode: Image.Stretch
            source: "qrc:/asset/image/logo.png"
        }

        //文字
        Text{
            id: title
            anchors{verticalCenter: parent.verticalCenter; left: imgIcon.right; leftMargin: 10}
            text: titleBar.title
            color: "#ffffff"
            font{family: "幼圆"; pixelSize: 11}
        }

        HComponets.SysBtnGroup{
            width: 81
            z: 1
            height: parent.height
            anchors{verticalCenter: parent.verticalCenter; right: parent.right}
            onClose: {
                titleBar.close()
            }
            onMinimal: {
                titleBar.min()
            }
            onMaximal: {
                titleBar.max()
            }
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
    }
}
