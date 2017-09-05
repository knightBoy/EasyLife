#ifndef LOGIN_FORM_H
#define LOGIN_FORM_H

#include "src/view/base_dialog.h"
#include "src/controller/user_controller.h"

class LoginForm : public BaseDialog{
    Q_OBJECT

public:
    explicit LoginForm();
    ~LoginForm();

private:
    virtual void init();

public:
    //验证用户名密码
    Q_INVOKABLE QString varifyUser(QString userName, QString password);

private slots:
    //退出登录窗口
    void cancelLogin();

private:
    UserController* userController;
};

#endif // LOGIN_FORM_H
