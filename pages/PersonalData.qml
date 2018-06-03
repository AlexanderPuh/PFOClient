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

ScrollablePage {
    id: page

    Column {
        spacing: 10
        width: parent.width
        Label {
            width: parent.width
            wrapMode: Label.Wrap
            font.pixelSize: 24
            horizontalAlignment: Qt.AlignHCenter
            text: "Account Setting"
        }


        TextField {
            id: field
            anchors.horizontalCenter: parent.horizontalCenter

            placeholderText: qsTr("Enter your name")
        }

        TextField {
            anchors.horizontalCenter: parent.horizontalCenter

            placeholderText: qsTr("Enter your login")
        }

        TextField {
            anchors.horizontalCenter: parent.horizontalCenter

            placeholderText: qsTr("Enter your email")
            inputMethodHints: Qt.ImhEmailCharactersOnly

        }

        Switch {
            anchors.horizontalCenter: parent.horizontalCenter

            text: "Teacher"
            enabled: false
        }

        TextField {
            anchors.horizontalCenter: parent.horizontalCenter

            placeholderText: qsTr("Enter your phine number")
        }

        TextField {
            anchors.horizontalCenter: parent.horizontalCenter

            placeholderText: qsTr("Enter your adress")
        }

        Label{
            anchors.horizontalCenter: parent.horizontalCenter

        text: "Do you wnat to reset password?"

        }

        TextField {
            anchors.horizontalCenter: parent.horizontalCenter

            placeholderText: qsTr("Enter your old password")
            echoMode: "Password"
        }

        TextField {
            anchors.horizontalCenter: parent.horizontalCenter

            placeholderText: qsTr("Enter your new password")
            echoMode: "Password"
        }

        TextField {

            id: confPass
            anchors.horizontalCenter: parent.horizontalCenter

            placeholderText: qsTr("Confirm password")
            echoMode: "Password"
        }

        Button{
            width: confPass.width
            anchors.horizontalCenter: parent.horizontalCenter

            text: "Confirm password"
        }

        Button {
            width: confPass.width

            anchors.horizontalCenter: parent.horizontalCenter

            text: "Save Changes"
        }

    }
}
