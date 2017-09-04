import QtQuick 2.0

Rectangle{
    id: imgBtn

    property string picCurrent: ""
    property string picNormal: ""
    property string picHover: ""
    property string picPressed: ""

    property int hHeight: 22
    property int hWidth: 27

    signal clicked  //点击信号

    width: hWidth
    height: hHeight
    color: "#00000000"
    state: "normal"

    Image{
        source: picCurrent
    }

    MouseArea{
        hoverEnabled: true
        anchors.fill: parent
        onEntered: imgBtn.state == "pressed" ? imgBtn.state = "pressed" : imgBtn.state = "hover"
        onExited: imgBtn.state == "pressed" ? imgBtn.state = "pressed" : imgBtn.state = "normal"
        onPressed: imgBtn.state = "pressed"
        onReleased: {
            imgBtn.state = "hover"
            imgBtn.clicked();
        }
    }

    Component.onCompleted: {
        imgBtn.picCurrent = imgBtn.picNormal
    }

    //按钮对应状态
    states:
    [
        State{
            name: "hover"
            PropertyChanges {
                target: imgBtn
                picCurrent: picHover
            }
        },
        State{
            name: "normal"
            PropertyChanges {
                target: imgBtn
                picCurrent: picNormal

            }
        },
        State{
            name: "pressed"
            PropertyChanges {
                target: imgBtn
                picCurrent: picPressed
            }
        }
    ]
}
