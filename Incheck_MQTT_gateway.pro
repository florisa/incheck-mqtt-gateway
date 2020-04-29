QT -= gui
QT += network

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        ic_mqtt_gateway.cpp \
        main.cpp




unix|win32: LIBS += -L$$PWD/../build-qtmqtt-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/lib/ -lQt5Mqtt

INCLUDEPATH += $$PWD/../build-qtmqtt-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/include
DEPENDPATH += $$PWD/../build-qtmqtt-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/include

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/../build-qtmqtt-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/lib/Qt5Mqtt.lib
else:unix|win32-g++: PRE_TARGETDEPS += $$PWD/../build-qtmqtt-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/lib/libQt5Mqtt.a

HEADERS += \
    ic_mqtt_gateway.h
