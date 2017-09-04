#include <QtGui>

#include "src/view/base_form.h"

BaseForm::BaseForm(QQuickView *parent) : QQuickView(parent)
{
    setFlags(Qt::FramelessWindowHint | Qt::Window);
    setColor(QColor(Qt::transparent));
}

BaseForm::~BaseForm(){

}

void BaseForm::init(){
    //mainwindow已经被使用了，切记
    this->rootContext()->setContextProperty("mainwindow", this);
}

bool BaseForm::SetQmlFile(QString qmlFile){
    if(QFile::exists(qmlFile)){
        this->setSource(QUrl::fromLocalFile(qmlFile));
        return true;
    }
    return false;
}

void BaseForm::exec(){
    this->init();
    this->show();
}
