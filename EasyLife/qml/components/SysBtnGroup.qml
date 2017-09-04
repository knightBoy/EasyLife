import QtQuick 2.0
import "../components" as HComponents

Row {
    id: sysBtnGroup
    spacing: 0
    height: parent.height
    width: 81

    signal minimal
    signal maximal
    signal close

    HComponents.ImageButton{
        id: min
        picHover: "qrc:/asset/image/minimal_hover.png"
        picNormal: "qrc:/asset/image/minimal_normal.png"
        picPressed: "qrc:/asset/image/minimal_pressed.png"
        onClicked: {
            sysBtnGroup.minimal()
        }
    }

    HComponents.ImageButton{
        id: max
        picHover: "qrc:/asset/image/maximal_hover.png"
        picNormal: "qrc:/asset/image/maximal_normal.png"
        picPressed: "qrc:/asset/image/maximal_pressed.png"
        onClicked: {
            sysBtnGroup.maximal()
        }
    }

    HComponents.ImageButton{
        id: quit
        picHover: "qrc:/asset/image/close_hover.png"
        picNormal: "qrc:/asset/image/close_normal.png"
        picPressed: "qrc:/asset/image/close_pressed.png"
        onClicked: {
            sysBtnGroup.close()
        }
    }
}
