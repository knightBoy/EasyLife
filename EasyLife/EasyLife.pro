TEMPLATE = app

QT += qml quick widgets
CONFIG += c++11

SOURCES += main.cpp \
    src/view/login_form.cpp \
    src/view/messagebox.cpp \
    src/view/main_form.cpp \
    src/controller/user_controller.cpp \
    src/view/base_form.cpp \
    src/view/base_dialog.cpp

RESOURCES += qml.qrc \
    img.qrc \
    js.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    src/view/login_form.h \
    src/view/messagebox.h \
    src/view/main_form.h \
    src/controller/user_controller.h \
    src/view/base_form.h \
    src/view/base_dialog.h \
    src/utils/dialog_result.h

DISTFILES += \
    qml/login.qml \
    qml/login/LineInput.qml \
    qml/components/MessageBox.qml \
    qml/main.qml \
    qml/components/ImageButton.qml \
    qml/components/TitleBar.qml \
    qml/components/CircleImage.qml \
    qml/components/SysBtnGroup.qml \
    qml/components/LabelButton.qml \
    qml/main/MenuItem.qml \
    qml/main/MainMenu.qml \
    qml/components/ProgressBar.qml \
    qml/main/TabView.qml \
    qml/main/TabPlan.qml \
    qml/main/TabHappy.qml \
    qml/main/TabLove.qml \
    qml/main/TabExperiment.qml \
    qml/main/TabPaper.qml \
    qml/main/paper/PaperCategory.qml \
    qml/main/paper/LevelGroup.qml \
    qml/main/experiment/ListTitle.qml \
    qml/main/experiment/ListView.qml \
    qml/main/experiment/ExperimentList.qml \
    qml/main/plan/PlanCalendar.qml \
    js/base.js \
    logo.ico \
    icon.rc \
    qml/main/love/Diary.qml \
    qml/main/love/DiaryList.qml \
    qml/components/ImageLabel.qml \
    qml/main/happy/VideoBox.qml \
    qml/main/happy/ListTitle.qml \
    qml/main/happy/VideoList.qml \
    qml/main/paper/AddCategory.qml

RC_FILE = icon.rc
