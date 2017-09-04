import QtQuick 2.0

Rectangle {
    id: container

    property string text: "Button"
    property string btColor: "#AC6475"
    property string fontColor: "#ffffff"
    property int btFondSize: 12
    //以下属性必须要指定
    property int btHeight
    property int btWidth

    signal clicked

    width: btWidth; height: btHeight
    color: btColor
    antialiasing: true
    radius: height/2

    // color the button with a gradient
    /*
    gradient: Gradient {
        GradientStop {
            position: 0.0
            color: {
                if (mouseArea.pressed)
                    return activePalette.dark
                else
                    return activePalette.light
            }
        }
        GradientStop { position: 1.0; color: activePalette.button }
    }
    */

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: container.clicked();
    }

    Text {
        id: buttonLabel
        anchors.centerIn: container
        color: container.fontColor
        font.pointSize: container.btFondSize
        font.family: "微软雅黑"
        text: container.text
    }
}
