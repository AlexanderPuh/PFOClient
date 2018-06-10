import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4


Pane {
    id: lectionContaines
    width: swipeView.width
    height: swipeView.height
    GridLayout{
        columns: 2
        width: parent.width

    ComboBox {
        id: combobox
        editable: true
        textRole: "name"
        Layout.fillWidth: true

        model: ContactModel { }

        onAccepted: {
            if (find(editText) === -1)
                model.append({text: editText})

                currentIndex = find(editText)
                console.log(currentIndex)

            console.log(str)

        }

    }

    Button{
        text: "Select Course"
        ToolTip.timeout: 5000
        ToolTip.visible: pressed
        ToolTip.text: "Selected"

        Layout.fillWidth: true
        onClicked: {

            onClicked: pageTab.source = "qrc:/pages/NewLection.qml"
            first.visible = false
        }
    }

    TextField{
        Layout.fillWidth: true
        Layout.columnSpan: 2

        placeholderText: "Enter name of Lection"
    }

    TextArea{
        Layout.columnSpan: 2
        Layout.fillWidth: true
        Layout.minimumHeight: 500
        Layout.fillHeight: true
        background: Rectangle {
            color: "#E0E0E0"

        }
    }
}

    ListView{
        id: listCombo
        anchors.top: combobox.bottom
        model: ContactModel { }
        delegate: myDelegate
        currentIndex: aNumber
    }


}

