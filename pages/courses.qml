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
                    text: name + ": " + number
                    onClicked: {
                        listView.currentIndex = index
                        console.log(index)
                        nameOfCoures.text = name
                        descriptionOfCourse.text = number
                        onTriggered: testDialog.open()

                    }
                }
            }

            model: ContactModel {}
            delegate: contactsDelegate
            focus: true
        }






Dialog {
    id: testDialog
    x: Math.round((window.width - width) / 2)
    y: Math.round(window.height / 6)
    width: Math.round(Math.min(window.width, window.height) / 3 * 2)
    modal: true
    focus: true
    title: "Cource"

    standardButtons: Dialog.Yes | Dialog.No

    onAccepted: {
        console.log("yes")
        title: "werwrr"
        settingsDialog.close()
    }
    onRejected: {
        console.log("no")
        settingsDialog.close()
    }

    contentItem: ColumnLayout {
        id: settingsColumn
        spacing: 20


            Label {
                id: nameOfCoures
            }

            Label {
                anchors.top: nameOfCoures.bottom
                id: descriptionOfCourse
            }

    }
}}
}
