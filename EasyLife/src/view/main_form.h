#ifndef MAIN_FORM_H
#define MAIN_FORM_H

#include "src/view/base_form.h"

class MainForm : public BaseForm{
    Q_OBJECT
public:
    explicit MainForm();

private:
    void init();
};

#endif // MAIN_FORM_H
