#ifndef BASE_FORM_H
#define BASE_FORM_H

#include <QtQuick>
#include <QQuickView>

class BaseForm : public QQuickView{
    Q_OBJECT

public:
    explicit BaseForm(QQuickView *parent = 0);
    ~BaseForm();

public:
    bool SetQmlFile(QString qmlFile);
    //运行窗口的函数
    void exec();

protected:
    virtual void init();
};

#endif // LOGINFORM_H
