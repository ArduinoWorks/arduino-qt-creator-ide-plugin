DEFINES += ARDUINO_LIBRARY

# Arduino plugin files

SOURCES += \
    arduinoplugin.cpp \
    arduinosettingspage.cpp \
    arduinosettingswidget.cpp \
    arduinotoolsmenu.cpp \
    arduinosettings.cpp \
    toolchain/arduinotoolchain.cpp \
    wizards/projects/arduino/arduinoprojectwizard.cpp \
    wizards/projects/avr/avrprojectwizard.cpp \
    wizards/projects/arduino/arduinoprojectwizarddialog.cpp \
    wizards/projects/arduino/arduinofilesselectionwizardpage.cpp \
    device/arduinodevice.cpp \
    device/arduinodeviceconfigurationwizard.cpp \
    device/arduinodevicefactory.cpp \
    device/arduinodeviceconfigurationwizardsetuppage.cpp \
    device/arduinodeviceconfigurationwidget.cpp \
    device/arduinodeviceconfigurationfactory.cpp

HEADERS += \
    arduino_global.h \
    arduinoconstants.h \
    arduinoplugin.h \
    arduinosettingspage.h \
    arduinosettingswidget.h \
    arduinotoolsmenu.h \
    arduinosettings.h \
    toolchain/arduinotoolchain.h \
    wizards/projects/arduino/arduinoprojectwizard.h \
    wizards/projects/avr/avrprojectwizard.h \
    wizards/projects/arduino/arduinoprojectwizarddialog.h \
    wizards/projects/arduino/arduinofilesselectionwizardpage.h \
    device/arduinodevice.h \
    device/arduinodeviceconfigurationwizard.h \
    device/arduinodevicefactory.h \
    device/arduinodeviceconfigurationwizardsetuppage.h \
    device/arduinodeviceconfigurationwidget.h \
    device/arduinodeviceconfigurationfactory.h

# Qt Creator linking

## Either set the IDE_SOURCE_TREE when running qmake,
## or set the QTC_SOURCE environment variable, to override the default setting
isEmpty(IDE_SOURCE_TREE): IDE_SOURCE_TREE = $$(QTC_SOURCE)
isEmpty(IDE_SOURCE_TREE): IDE_SOURCE_TREE = "/home/thomas/Projects/qt-creator/"

## Either set the IDE_BUILD_TREE when running qmake,
## or set the QTC_BUILD environment variable, to override the default setting
isEmpty(IDE_BUILD_TREE): IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE): IDE_BUILD_TREE = "/home/thomas/Projects/build-qtcreator-Desktop_Qt_5_9_1_GCC_64bit-Debug"

## uncomment to build plugin into user config directory
## <localappdata>/plugins/<ideversion>
##    where <localappdata> is e.g.
##    "%LOCALAPPDATA%\QtProject\qtcreator" on Windows Vista and later
##    "$XDG_DATA_HOME/data/QtProject/qtcreator" or "~/.local/share/data/QtProject/qtcreator" on Linux
##    "~/Library/Application Support/QtProject/Qt Creator" on OS X
USE_USER_DESTDIR = yes

###### If the plugin can be depended upon by other plugins, this code needs to be outsourced to
###### <dirname>_dependencies.pri, where <dirname> is the name of the directory containing the
###### plugin's sources.

QTC_PLUGIN_NAME = Arduino
QTC_LIB_DEPENDS += \
    # nothing here at this time

QTC_PLUGIN_DEPENDS += \
    coreplugin \
    projectexplorer \

QTC_PLUGIN_RECOMMENDS += \
    # optional plugin dependencies. nothing here at this time

###### End _dependencies.pri contents ######

include($$IDE_SOURCE_TREE/src/qtcreatorplugin.pri)
include($$IDE_SOURCE_TREE/src/libs/utils/utils-lib.pri)

FORMS += \
    arduinosettingswidget.ui

DISTFILES += \
    README.md \
    Arduino.json.in \
    wizards/projects/arduino/arduino.ino

RESOURCES += \
    res.qrc
