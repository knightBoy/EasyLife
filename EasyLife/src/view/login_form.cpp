#include "src/view/login_form.h"

LoginForm::LoginForm(): BaseDialog(){
}

LoginForm::~LoginForm(){
}

void LoginForm::init(){
    BaseDialog::init();

    this->SetQmlFile(":/qml/login.qml");
    QObject::connect(this->engine(), SIGNAL(quit()), this, SLOT(close()));

    userController = new UserController();
}

//检验用户名，密码
QString LoginForm::varifyUser(QString userName, QString password){
    UserResult res = this->userController->varifyUser(userName, password);

    if(res.code == 1){
        //登录成功
        return nullptr;
    }else{
        return res.message;
    }
}
