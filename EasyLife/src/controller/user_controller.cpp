#include "src/controller/user_controller.h"

UserResult UserController::varifyUser(QString userName, QString password){
    UserResult result;
    result.code = 0;

    if(userName.compare("knightBoy")){
        result.message = "用户名错误";
        return result;
    }
    if(password.compare("123456")){
        result.message = "密码错误";
        return result;
    }

    result.code = 1;
    result.message = "登录成功";
    return result;
}
