

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property int downHeight: 202
    property int downWidth: 640
    id: root
    width: downWidth
    height: downHeight

    Style {
        id: style
    }

    Rectangle {
        id: rectangle
        color: style.navBg
        radius: style.btnRadius
        border.width: 0
        anchors.fill: parent

        Column {
            id: column
            width: 0.2 * parent.width
            height: parent.height
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

        Column {
            id: column1
            x: 259
            width: 0.8 * parent.width
            height: parent.height
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.topMargin: 0
            topPadding: 5
            spacing: 5

            Text {
                id: text1
                width: 0.9 * parent.width
                height: 0.5 * parent.height
                color: style.grayNavFont
                text: qsTr("Use a minimalistic approach when creating your eCommerce app for a better e-commerce mobile app design. To make it easier for customers to find products, simplify the interface. Keep the user interface (UI) simple.")
                font.pixelSize: style.smallFontSize
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.Wrap
            }

            ApplySection {
                id: applySection
                applySectionWidth: 0.9 * parent.width
                applySectionHeight: 0.4 * parent.height
            }
        }
    }
}
