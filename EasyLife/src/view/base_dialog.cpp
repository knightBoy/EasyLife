#include "src/view/base_dialog.h"

#include <QEventLoop>
#include <QObject>

BaseDialog::BaseDialog() : dlgResult(OK){
}

void BaseDialog::init(){
    BaseForm::init();
}

//运行对话框
DialogResult BaseDialog::exec(){
    this->init();
    this->show();

    //事件循环一直进行知道收到finish信号
    QEventLoop loop;
    QObject::connect(this, SIGNAL(finish()), &loop, SLOT(quit()));
    loop.exec();

    return this->dlgResult;
}

void BaseDialog::closeDialog(){
    emit finish();
}
