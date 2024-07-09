

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    Style {
        id: style
    }
    property int applySectionWidth: 409
    property int applySectionHeight: 60
    Row {
        id: row
        anchors.fill: parent
        rightPadding: 0
        leftPadding: 0
        spacing: 10

        Text {
            id: text1
            width: 0.10 * parent.width
            height: 0.6 * parent.height
            color: style.whiteNavFont
            text: qsTr("8700")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 5
            font.pixelSize: style.largeFontSize
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
        }

        Text {
            id: text2
            width: 0.10 * parent.width
            height: 0.6 * parent.height
            color: style.grayNavFont
            text: qsTr("/month")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: text1.right
            anchors.leftMargin: 5
            font.pixelSize: style.smallFontSize
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.NoWrap
        }

        SmallButton {
            id: smallButton
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: smallButton1.left
            anchors.rightMargin: 20
            smallbtnWidth: 0.25 * parent.width
            smallbtnHeight: 0.7 * parent.height
            smallBtnText: "More details"
        }

        SmallButton {
            id: smallButton1
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 20
            smallbtnWidth: 0.25 * parent.width
            smallbtnHeight: 0.7 * parent.height
            smallBtnText: "Apply now"
            state: "secondaryState"
        }
    }
    id: root
    width: applySectionWidth
    height: applySectionHeight
    color: style.greyBg
    radius: style.btnRadius
    border.width: 0
}
