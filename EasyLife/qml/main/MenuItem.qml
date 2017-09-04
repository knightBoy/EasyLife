import QtQuick 2.0

Item {
    property string menuIcon
    property string menuText
    property bool checked: false

    signal itemClick()

    id: menuItem

    onCheckedChanged: {
        if(checked){
            itemArea.state = "hover"
        }else{
            itemArea.state = "normal"
        }
    }

    Rectangle{
        id: itemArea
        anchors.fill: parent
        color: "#00000000"
        state: {
            if(checked){
                return "hover"
            }else{
                return "normal"
            }
        }

        MouseArea{
            hoverEnabled: true
            anchors.fill: parent
            onEntered: {
                itemArea.state = "hover"
            }
            onExited: {
                if(checked === false){
                    itemArea.state = "normal"
                }
            }
            onPressed: itemArea.state = "pressed"
            onReleased: {
                itemArea.state = "hover"
                menuItem.itemClick()
            }
        }

        Row{
            height: parent.height
            anchors.horizontalCenter: parent.horizontalCenter

            Image{
                width: 24
                height: 24
                anchors.verticalCenter: parent.verticalCenter
                source: menuItem.menuIcon
            }

            spacing: 15

            Text{
                anchors.verticalCenter: parent.verticalCenter
                text: menuItem.menuText
                color: "#ffffff"
                font{family: "微软雅黑"; pixelSize: 14}
            }
        }

        states: [
            State {
                name: "normal"
                PropertyChanges {
                    target: itemArea
                    color: "#00000000"
                }
            },
            State{
                name: "hover"
                PropertyChanges{
                    target:itemArea
                    color: "#7FC8C8C8"
                }
            },
            State{
                name: "pressed"
                PropertyChanges{
                    target: itemArea
                    color: "#CCC8C8C8"
                }
            }

        ]
    }
}
