import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    property real value: 0.5

    id: progressBarContainer

    ProgressBar{
        id: progressBar
        width: parent.width
        height: parent.height
        value: progressBarContainer.value

        style: ProgressBarStyle{
            background: Rectangle{
                radius: height/2
                color: "#aaffffff"
            }
            progress: Rectangle{
                color: "#ff6347"
                radius: height/2
            }
        }
    }
}
