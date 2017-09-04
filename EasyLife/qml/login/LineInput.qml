import QtQuick 2.0

FocusScope {
    id: wrapper

    property alias text: textInput.text

    //由外部设定
    property string hint
    property int font_size: 12
    property string icon
    property bool passwordMode

    signal accepted

    Rectangle {
        id: inputFiled
        anchors.fill: parent
        color: "#00000000"

        Image{
            id: iconImg
            x: 0
            y: 0
            width: 16
            height: 16
            source: icon
        }

        TextInput {
            y: 3
            id: textInput
            focus: true
            color: "#ffffff"
            anchors { left: parent.left; right: parent.right; leftMargin: 40; rightMargin: 20 }
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: font_size
            text: wrapper.hint
            maximumLength: 15
            autoScroll: true
            font.family: "幼圆"
            font.bold: true
            echoMode: {
                if(wrapper.passwordMode)
                    return TextInput.Password
                return TextInput.Normal
            }
            selectByMouse: true
            selectionColor: "#AC6475"
            onAccepted: wrapper.accepted()
        }
    }

    Rectangle{
        y: 18
        width: parent.width
        height: 1
        anchors{top: inputFiled.bottom;}
        color: "#AC6475"
    }
}
