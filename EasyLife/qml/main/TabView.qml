import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

import "../main" as HMain

Item {
    id: tabviewContainer
    anchors.fill: parent

    //内容标签页
    TabView{

        id: tabview
        anchors.fill: parent

        //样式
        style: TabViewStyle{
            tab: Item{
                visible: false
            }
        }

        //论文管理
        Tab{
            HMain.TabPaper{
                anchors.fill: parent
            }
        }

        //我的实验
        Tab{
            HMain.TabExperiment{
                anchors.fill: parent
            }
        }
        //日程安排
        Tab{
            HMain.TabPlan{
                anchors.fill: parent
            }
        }
        //娱乐消遣
        Tab{
            HMain.TabHappy{
                anchors.fill: parent
            }
        }
        //爱情长跑
        Tab{
            HMain.TabLove{
                anchors.fill: parent
            }
        }
    }

    //修改被选中的tab
    function changeTab(index){
        tabview.currentIndex = index
    }
}
