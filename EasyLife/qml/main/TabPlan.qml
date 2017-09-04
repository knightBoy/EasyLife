import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import "./plan" as HPlan

Item {

    Image{
        anchors.fill: parent
        source: "qrc:/asset/image/tab_plan_background.png"
        fillMode: Image.Tile
    }

    HPlan.PlanCalendar{
        anchors.fill: parent
    }
}
