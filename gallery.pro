TEMPLATE = app
TARGET = gallery
QT += charts quick quickcontrols2

SOURCES += \
    $$files(*.cpp) \
    $$files(src/*.cpp)

HEADERS += \
    $$files(src/*.hpp)
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


