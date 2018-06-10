/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQml.Models 2.1
import QtQuick.Window 2.0
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

ScrollablePage {
    id: page


    Pane {
        id: pane
        padding: 0
        visible: true
ColumnLayout{
    anchors.fill: parent
    spacing: 20
        Button{
            id: addCourse
            implicitWidth: parent.width
            implicitHeight: 50

            anchors.topMargin: 200

            anchors.bottomMargin: 200
            text: "Add New Course"
            onClicked: {
                onTriggered: addCourseDialog.open()

            }
        }

        ColumnLayout{
            anchors.topMargin: 20


            id: allCourses
            anchors.top: addCourse.bottom


        ListView {
            id: listView
            width: parent.width; height: parent.width
            spacing: 20
            clip: true

            signal mySelect(int playmode)
            onCurrentItemChanged: mySelect(listView.currentIndex)

            Component {
                id: contactsDelegate

                Button {
                    id: wrapper
                    width: parent.width
                    height: 50
                    text: name
                    onClicked: {
                        listView.currentIndex = index
                        console.log(index)
                        nameOfCoures.text = name
                        descriptionOfCourse.text = description
                        onTriggered: testDialog.open()

                    }
                }
            }

            model: ContactModel {}
            delegate: contactsDelegate
            focus: true
        }


}


}

Dialog {
    id: testDialog
    x: Math.round((window.width - width) / 2)
    y: Math.round(window.height / 6)
    width: 360
    modal: true
    focus: true
    title: nameOfCoures


    contentItem: ColumnLayout {
        id: settingsColumn
        spacing: 20


            Label {
                id: nameOfCoures
                font.bold: true
            }

            Label {
                anchors.top: nameOfCoures.bottom
                id: descriptionOfCourse
                wrapMode: Text.WordWrap

                horizontalAlignment:  Text.AlignHCente
            }
        Column{
            anchors.top: descriptionOfCourse.bottom +25
            spacing: 2
            width: parent.width
            GridLayout{
            columns: 2
            width: parent.width
            Button{
                id: declineB
            text: "Cancel"
            Layout.fillWidth: true
            }
            Button{
                text: "Follow"
                Layout.fillWidth: true
            }
            }

        }


    }
}



Dialog {
    id: addCourseDialog
    x: Math.round((window.width - width) / 2)
    y: Math.round(window.height / 6)
    width: 360
    modal: true
    focus: true
    title: "New Course"


    contentItem: ColumnLayout {
        id: settingsCourseColumn
        spacing: 20


            TextField {
                id: nameOfNewCoures
                font.bold: true
                Layout.fillWidth: true

                placeholderText: "Add Name of Course"
            }

            TextArea {
                anchors.top: nameOfNewCoures.bottom
                id: descriptionOfNewCourse
                wrapMode: Text.WordWrap
                Layout.fillWidth: true

                placeholderText: "Add description of Course"

                horizontalAlignment:  Text.AlignHCente
            }
        Column{
            anchors.top: descriptionOfNewCourse.bottom +25
            spacing: 2
            width: parent.width
            GridLayout{
            columns: 2
            width: parent.width
            Button{
                id: declineSave
            text: "Cancel"
            Layout.fillWidth: true
            onClicked: {

                addCourseDialog.close()
            }
            }
            Button{
                text: "Save"
                Layout.fillWidth: true
                onClicked: {

                    addCourseDialog.close()
                }
            }
            }

        }


    }
}


    }
}
