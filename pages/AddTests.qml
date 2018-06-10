import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4

Flickable {
    id: flickable

    contentHeight: addTestsPage.height


    Pane {
        id: addTestsPage
        width: flickable.width
        height: flickable.height * 1.25
        GridLayout{
            columns: 2
            width: parent.width

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2
            text: "Add question:"
            font.pixelSize: 24
            font.bold: true
        }
        TextField{
            Layout.fillWidth: true
            Layout.columnSpan: 2

            placeholderText: "Enter name of Question"
        }

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2

            text: "Enter possible answers"

        }
        CheckBox {
            text: "First"
            checked: true
        }
        CheckBox {
            text: "First"
            checked: true
        }
        CheckBox {
            text: "First"
            checked: true
        }
        CheckBox {
            text: "First"
            checked: true
        }

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2
            text: "Add question:"
            font.pixelSize: 24
            font.bold: true
        }

        TextField{
            Layout.fillWidth: true
            Layout.columnSpan: 2

            placeholderText: "Enter name of Question"
        }

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2

            text: "Enter possible answers"

        }
        CheckBox {
            text: "First"
            checked: true
        }
        CheckBox {
            text: "First"
            checked: true
        }
        CheckBox {
            text: "First"
            checked: true
        }
        CheckBox {
            text: "First"
            checked: true
        }

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2
            text: "Add question:"
            font.pixelSize: 24
            font.bold: true
        }
        TextField{
            Layout.fillWidth: true
            Layout.columnSpan: 2

            placeholderText: "Enter name of Question"
        }

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2

            text: "Enter possible answers"

        }
        CheckBox {
            text: "First"
            checked: true
        }
        CheckBox {
            text: "First"
            checked: true
        }
        CheckBox {
            text: "First"
            checked: true
        }
        CheckBox {
            text: "First"
            checked: true
        }
        Button
        {
            Layout.fillWidth: true
            Layout.columnSpan: 2
            text: "Add Question"
        }

    }

 }
    ScrollIndicator.vertical: ScrollIndicator { }

}
