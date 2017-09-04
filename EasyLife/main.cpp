#include <QApplication>
#include <QtDebug>

#include "src/utils/dialog_result.h"
#include "src/view/login_form.h"
#include "src/view/main_form.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QApplication::setQuitOnLastWindowClosed(true);

    //打开登录框
    LoginForm login;
    if(OK == login.exec()){
        MainForm mainForm;
        mainForm.exec();

        login.close();
        //login.deleteLater();
        login.destroy();

        return app.exec();
    }

    return 0;
}
