import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4

Flickable {
    id: flickable

    contentHeight: addTestsPage.height


    Pane {
        id: addTestsContain
        width: flickable.width
        height: flickable.height * 1.25
        GridLayout{
            columns: 2
            width: parent.width

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2
            text: "Question #1"
            font.pixelSize: 24
            font.bold: true
        }
        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2
            font.pixelSize: 14

            text: "На какой презентация был впревые показан Material design"
        }

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2

            text: "Answers:"

        }
        CheckBox {
            text: "Google I/O"
            checked: true
        }
        CheckBox {
            text: "Yandex"
            checked: true
        }
        CheckBox {
            text: "Apple"
            checked: true
        }
        CheckBox {
            text: "Другие"
            checked: true
        }

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2
            text: "Question #2"
            font.pixelSize: 24
            font.bold: true
        }
        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2
            font.pixelSize: 14

            text: "Какую концепцию дизайна можно сравнивать с Material?"
        }

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2

            text: "Answers:"

        }
        CheckBox {
            text: "Fluent design"
            checked: true
        }
        CheckBox {
            text: "Universal"
            checked: true
        }
        CheckBox {
            text: "Apple"
            checked: true
        }
        CheckBox {
            text: "Другие"
            checked: true
        }

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2
            text: "Question #3"
            font.pixelSize: 24
            font.bold: true
        }
        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2
            font.pixelSize: 14

            text: "Какой принцип не относятся к Material Design?"
        }

        Label{
            Layout.fillWidth: true
            Layout.columnSpan: 2

            text: "Answers:"

        }
        CheckBox {
            text: "Материал - это метафора"
            checked: true
        }
        CheckBox {
            text: "Глубина объемов"
            checked: true
        }
        CheckBox {
            text: "Вдумчивая анимация"
            checked: true
        }
        CheckBox {
            text: "Нет ответа"
            checked: true
        }

    }

 }
    ScrollIndicator.vertical: ScrollIndicator { }

}
