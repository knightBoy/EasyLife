#include "src/view/messagebox.h"

#include <QQuickItem>

HMessageBox::HMessageBox() : BaseDialog(){
    this->setModality(Qt::WindowModal);
}

HMessageBox::~HMessageBox(){

}

void HMessageBox::init(){
    BaseDialog::init();

    this->SetQmlFile(":/qml/components/MessageBox.qml");
    //将信号与槽进行绑定
    QQuickItem* messageBox = this->rootObject();
    if(messageBox){
        QObject::connect(messageBox, SIGNAL(click()), this, SLOT(boxClick()));
    }
}

//确定按钮响应事件
void HMessageBox::boxClick(){
}
