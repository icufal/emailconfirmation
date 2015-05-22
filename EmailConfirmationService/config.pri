# Config.pri file version 2.0. Auto-generated by IDE. Any changes made by user will be lost!
BASEDIR = $$quote($$_PRO_FILE_PWD_)

device {
    CONFIG(debug, debug|release) {
        profile {
            INCLUDEPATH += $$quote(${QNX_TARGET}/usr/include/qt4/QtCore)

            DEPENDPATH += $$quote(${QNX_TARGET}/usr/include/qt4/QtCore)

            LIBS += -lQtCore

            CONFIG += \
                config_pri_source_group1
        } else {
            INCLUDEPATH += $$quote(${QNX_TARGET}/usr/include/qt4) \
                $$quote(${QNX_TARGET}/usr/include/qt4/QtCore)

            DEPENDPATH += $$quote(${QNX_TARGET}/usr/include/qt4) \
                $$quote(${QNX_TARGET}/usr/include/qt4/QtCore)

            LIBS += -lQtCore

            CONFIG += \
                config_pri_source_group1
        }

    }

    CONFIG(release, debug|release) {
        !profile {
            INCLUDEPATH += $$quote(${QNX_TARGET}/usr/include/qt4/QtCore)

            DEPENDPATH += $$quote(${QNX_TARGET}/usr/include/qt4/QtCore)

            LIBS += -lQtCore

            CONFIG += \
                config_pri_source_group1
        }
    }
}

simulator {
    CONFIG(debug, debug|release) {
        !profile {
            INCLUDEPATH += $$quote(${QNX_TARGET}/usr/include/qt4/QtCore)

            DEPENDPATH += $$quote(${QNX_TARGET}/usr/include/qt4/QtCore)

            LIBS += -lQtCore

            CONFIG += \
                config_pri_source_group1
        }
    }
}

config_pri_source_group1 {
    SOURCES += \
        $$quote($$BASEDIR/src/MessageHandler.cpp) \
        $$quote($$BASEDIR/src/NetworkManager.cpp) \
        $$quote($$BASEDIR/src/applicationheadless.cpp) \
        $$quote($$BASEDIR/src/main.cpp)

    HEADERS += \
        $$quote($$BASEDIR/src/MessageHandler.hpp) \
        $$quote($$BASEDIR/src/NetworkManager.h) \
        $$quote($$BASEDIR/src/applicationheadless.hpp)
}

CONFIG += precompile_header

PRECOMPILED_HEADER = $$quote($$BASEDIR/precompiled.h)

lupdate_inclusion {
    SOURCES += \
        $$quote($$BASEDIR/../src/*.c) \
        $$quote($$BASEDIR/../src/*.c++) \
        $$quote($$BASEDIR/../src/*.cc) \
        $$quote($$BASEDIR/../src/*.cpp) \
        $$quote($$BASEDIR/../src/*.cxx)

    HEADERS += \
        $$quote($$BASEDIR/../src/*.h) \
        $$quote($$BASEDIR/../src/*.h++) \
        $$quote($$BASEDIR/../src/*.hh) \
        $$quote($$BASEDIR/../src/*.hpp) \
        $$quote($$BASEDIR/../src/*.hxx)
}

TRANSLATIONS = $$quote($${TARGET}.ts)
