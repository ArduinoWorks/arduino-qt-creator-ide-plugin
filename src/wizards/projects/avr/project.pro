##########################################################
# File generated by Arduino QtCreator's plugin
# https://github.com/ThomArmax/arduino-qt-creator-plugin
#
##########################################################

TEMPLATE = app

AVR_MCU         = %{atpMCU}
AVR_FCPU        = "%{atpSpeed}UL"
AVR_PROGRAMMER  = %{atpProgrammer}
AVR_PORT        = %{atpPort}

DEF_MCU = "__AVR_$${AVR_MCU}__"
DEFINES = "$$DEF_MCU"

QT -= gui core

CONFIG += c++11
CONFIG -= app_bundle
CONFIG -= qt

DESTDIR = ../bin
TARGET = %{ProjectName}

INCLUDEPATH += /usr/lib/avr/include/

SOURCES += \
    main.cpp
