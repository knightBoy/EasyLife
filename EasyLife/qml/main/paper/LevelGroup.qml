import QtQuick 2.0

Item {
    id: levelGroupContainer

    property string fullIcon: "qrc:/asset/image/star-full.png"
    property string emptyIcon: "qrc:/asset/image/star-empty.png"
    property int starCount: 3

    Row{
        id: starRow
        spacing: 2
        anchors.right: parent.right

        Image{
            width: 16
            height: 16
            source: levelGroupContainer.emptyIcon
        }

        Image{
            width: 16
            height: 16
            source: levelGroupContainer.emptyIcon
        }

        Image{
            width: 16
            height: 16
            source: levelGroupContainer.emptyIcon
        }

        Image{
            width: 16
            height: 16
            source: levelGroupContainer.emptyIcon
        }

        Image{
            width: 16
            height: 16
            source: levelGroupContainer.emptyIcon
        }
    }

    //点亮starCount颗星星
    Component.onCompleted: {
        if(levelGroupContainer.starCount >= 0 && levelGroupContainer.starCount <= 5){
            var childs = starRow.children
            for(var i = 0; i < levelGroupContainer.starCount; i++){
                childs[i].source = levelGroupContainer.fullIcon
            }
        }
    }
}
