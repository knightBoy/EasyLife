import QtQuick 2.0

Rectangle {
    id: container

    property string text: "Button"
    property string normalColor: "#EE9572"
    property string hoverColor: "#EE8262"
    property string pressedColor: "#EE6A50"
    property string fontColor: "#ffffff"
    property int btFontSize: 12
    property int btRadius: -1

    //以下属性必须要指定
    property int btHeight
    property int btWidth

    signal clicked

    width: btWidth; height: btHeight
    color: normalColor
    antialiasing: true
    radius: {
        if(btRadius === -1){
            return height/2
        }else{
            return btRadius
        }
    }

    MouseArea {
        id: mouseArea
        hoverEnabled: true
        anchors.fill: parent
        onEntered: container.state = "hover"
        onExited: container.state = "normal"
        onPressed: container.state = "pressed"
        onReleased: {
            container.state = "hover"
            container.clicked()
        }
    }

    Text {
        id: buttonLabel
        anchors.centerIn: container
        color: container.fontColor
        font.pointSize: container.btFontSize
        font.family: "微软雅黑"
        text: container.text
    }

    states: [
        State {
            name: "normal"
            PropertyChanges {
                target: container
                color: normalColor

            }
        },
        State {
            name: "hover"
            PropertyChanges {
                target: container
                color: hoverColor
            }
        },
        State {
            name: "pressed"
            PropertyChanges {
                target: container
                color: pressedColor
            }
        }
    ]
}
