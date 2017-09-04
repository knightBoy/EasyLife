#ifndef USER_CONTROLLER_H
#define USER_CONTROLLER_H

#include <QString>

//登录的返回结果
typedef struct UserResult{
    int code;
    QString message;
}UserResult;

class UserController{

public:
    UserResult varifyUser(QString userName, QString password);
};

#endif // USER_CONTROLLER_H
