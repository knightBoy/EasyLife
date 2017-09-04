#ifndef BASE_DIALOG_H
#define BASE_DIALOG_H

#include "src/view/base_form.h"
#include "src/utils/dialog_result.h"

class BaseDialog : public BaseForm{
    Q_OBJECT

public:
    explicit BaseDialog();

public:
    DialogResult exec();

protected:
    void init();

signals:
    void finish();

//关闭槽，可以接受qml中的信号
public slots:
    void closeDialog();

private:
    DialogResult dlgResult;
};

#endif // BASE_DIALOG_H
