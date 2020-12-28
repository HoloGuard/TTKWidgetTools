# =================================================
# * This file is part of the TTK Widget Tools project
# * Copyright (C) 2015 - 2021 Greedysky Studio
#
# * This program is free software; you can redistribute it and/or modify
# * it under the terms of the GNU General Public License as published by
# * the Free Software Foundation; either version 3 of the License, or
# * (at your option) any later version.
#
# * This program is distributed in the hope that it will be useful,
# * but WITHOUT ANY WARRANTY; without even the implied warranty of
# * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# * GNU General Public License for more details.
#
# * You should have received a copy of the GNU General Public License along
# * with this program; If not, see <http://www.gnu.org/licenses/>.
# =================================================

TEMPLATE = app

equals(QT_MAJOR_VERSION, 4){
CONFIG   += gcc
}

contains(CONFIG, TTK_BUILD_LIB){
    CONFIG -= TTK_BUILD_LIB
}

CONFIG += TTK_NO_MSVC_LINK_NEED
win32:msvc{
    CONFIG -= TTK_NO_MSVC_LINK_NEED
}

include($$PWD/TTKExample.pri)
include($$PWD/../TTKWidgetTools.pri)
include($$PWD/../TTKQrc/TTKQrc.pri)

TARGET = TTKWidgetTools
LIBS += -L$$DESTDIR -lTTKCore

INCLUDEPATH += $$PWD

SOURCES += \
    $$PWD/ttkwidgetproperty.cpp \
    $$PWD/ttkpropertycontainwidget.cpp \
    $$PWD/ttkfunctionitem.cpp \
    $$PWD/ttkbackgroundcontainer.cpp \
    $$PWD/ttkbackgroundwidget.cpp \
    $$PWD/ttktoolsapplication.cpp \
    main.cpp

HEADERS += \
    $$PWD/ttkwidgetproperty.h \
    $$PWD/ttkpropertycontainwidget.h \
    $$PWD/ttkfunctionitem.h \
    $$PWD/ttkbackgroundcontainer.h \
    $$PWD/ttkbackgroundwidget.h \
    $$PWD/ttktoolsapplication.h \
    $$PWD/../ttkglobaldefine.h

FORMS   += $$PWD/ttktoolsapplication.ui

RESOURCES += $$PWD/TTKExample.qrc

win32{
    RC_FILE = TTKExample.rc
}
