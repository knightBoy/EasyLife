import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {

    Calendar{
        id: calendar
        anchors{fill: parent; margins: 20}

        style: CalendarStyle{
            background: Rectangle{
                color: "#00000000"
                radius: 8
            }

            //每天的显示格式.单元格样式
            dayDelegate: Rectangle{
                anchors.fill: parent
                color:{
                    if(styleData.selected){ //被选中的日期
                        return "#443F8FEF"
                    }else if(styleData.visibleMonth && styleData.valid){ //本月日期
                        return "#E7EFFF"
                    }else{ //本月其他月日期
                        return "#EEEEEE"
                    }
                }

                Label{
                    id: dateTime
                    anchors{top: parent.top; right: parent.right; topMargin: 5; rightMargin: 5}
                    text: styleData.date.getDate()
                    font.family: "幼圆"
                    font.bold: true
                    font.pixelSize: 25
                    color: {
                        if(styleData.selected){ //被选中的日期
                            return "#ffffff"
                        }else if(styleData.visibleMonth && styleData.valid){ //本月日期
                            return "brown"
                        }else{ //本月其他月日期
                            return "gray"
                        }
                    }
                }

                //日程提示
                Text{
                    id: plan
                    width: parent.width
                    anchors{
                        top: dateTime.bottom
                        left: parent.left
                        right: parent.right
                        topMargin: 10
                        leftMargin: 10
                        rightMargin: 10
                    }
                    text: qsTr("看书 计算机历史")
                    wrapMode: Text.WordWrap
                    color: {
                        if(styleData.visibleMonth){
                            return "#800000"
                        }else{
                            return "gray"
                        }
                    }
                    maximumLineCount: 3
                    font{
                        pixelSize: 10
                        family: "幼圆"
                    }
                }

                //日程个数提示
                Rectangle{
                    height: 16
                    width: 16
                    anchors{
                        bottom: parent.bottom
                        left: parent.left
                        leftMargin: 5
                        bottomMargin: 5
                    }
                    radius: 8
                    color: "#006400"

                    Label{
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("2")
                        color: "#ffffff"
                    }
                }

                //修改本日日程
                Image{
                    height: 16
                    width: 16
                    anchors{
                        bottom: parent.bottom
                        right: parent.right
                        rightMargin: 5
                        bottomMargin: 5
                    }
                    source: "qrc:/asset/image/edit.png"
                }
            }

        }
    }
}
