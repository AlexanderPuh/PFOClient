TEMPLATE = app
TARGET = gallery
QT += quick quickcontrols2

SOURCES += \
    gallery.cpp

RESOURCES += \
    gallery.qml \
    qtquickcontrols2.conf \
    $$files(images/*.png) \
    $$files(images/+material/*.png) \
    $$files(pages/*.qml)

INSTALLS += D:\gallery

DISTFILES += \
    pages/lection.qml \
    pages/listCourses.qml


