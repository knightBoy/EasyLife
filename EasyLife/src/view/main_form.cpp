#include "src/view/main_form.h"

MainForm::MainForm(): BaseForm(){

}

void MainForm::init(){
   BaseForm::init();

   SetQmlFile(":/qml/main.qml");
}
