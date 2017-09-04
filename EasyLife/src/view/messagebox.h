#ifndef MESSAGEBOX_H
#define MESSAGEBOX_H

#include "src/view/base_dialog.h"

class HMessageBox : public BaseDialog{
    Q_OBJECT

public:
    explicit HMessageBox();
    ~HMessageBox();

public:
    virtual void init();

public slots:
    //点击信号函数
    void boxClick();
};

#endif // MESSAGEBOX_H
