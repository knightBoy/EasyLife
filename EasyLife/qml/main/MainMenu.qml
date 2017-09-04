import QtQuick 2.0
import "../main" as HMain

Item {
    signal clicked(int index)

    property int __currentChecked: 0 //当前被选中的tab

    id: mainMenu

    HMain.MenuItem{
        id: paperItem
        height: 45
        width: parent.width

        menuIcon: "qrc:/asset/image/book_menu.png"
        menuText: "论文管理"
        checked: true

        onItemClick: {
            clicked(0)
            changeCheck(0)
        }
    }
    HMain.MenuItem{
        id: exceciseItem
        height: 45
        width: parent.width
        anchors.top: paperItem.bottom

        menuIcon: "qrc:/asset/image/experiment_menu.png"
        menuText: "我的实验"
        checked: false

        onItemClick: {
            clicked(1)
            changeCheck(1)
        }
    }
    HMain.MenuItem{
        id: planItem
        height: 45
        width: parent.width
        anchors.top: exceciseItem.bottom

        menuIcon: "qrc:/asset/image/plan_menu.png"
        menuText: "日程安排"
        checked: false

        onItemClick: {
            clicked(2)
            changeCheck(2)
        }
    }
    HMain.MenuItem{
        id: happyItem
        height: 45
        width: parent.width
        anchors.top: planItem.bottom

        menuIcon: "qrc:/asset/image/happy_menu.png"
        menuText: "娱乐消遣"
        checked: false

        onItemClick: {
            clicked(3)
            changeCheck(3)
        }
    }
    HMain.MenuItem{
        id: loveItem
        height: 45
        width: parent.width
        anchors.top: happyItem.bottom

        menuIcon: "qrc:/asset/image/love_menu.png"
        menuText: "爱情长跑"
        checked: false

        onItemClick: {
            clicked(4)
            changeCheck(4)
        }
    }

    //改变选中状态
    function changeCheck(index){
        var childs = mainMenu.children;
        childs[__currentChecked].checked = false;
        childs[index].checked = true;
        __currentChecked = index;
    }

}
