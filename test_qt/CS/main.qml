import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.2

ApplicationWindow {
    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableWidth
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                shortcut:"Ctrl+O"
                onTriggered: console.log("Open action triggered");
                iconSource: "download.png"
            }

            MenuItem{
                text: qsTr("Add A New File")
                onTriggered: console.log("Save action triggered");
            }
            MenuSeparator { }

            MenuItem {
                text: qsTr("Close")
                shortcut: "Ctrl+W"
                onTriggered: console.log("close action triggered");
            }

            MenuSeparator { }

            MenuItem{
                text: qsTr("Save")
                shortcut: "Ctrl+S"
                onTriggered: console.log("Save action triggered");
            }
            MenuItem{
                text: qsTr("Save As")
                onTriggered: console.log("Save As action triggered");
            }
            MenuSeparator { }


            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
        Menu{
            Button {
                text: "Button"
            }
            title:qsTr("Options")
            MenuItem{
                text: qsTr("Run")
                onTriggered: console.log("Run action triggered");
            }
            MenuItem{
                text: qsTr("Debug")
                onTriggered: console.log("Debug action triggered");
            }
        }

    }

    MainForm {
        anchors.fill: parent
        button1.onClicked: messageDialog.show(qsTr("Button 1 pressed"))
        button2.onClicked: messageDialog.show(qsTr("Button 2 pressed"))
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
