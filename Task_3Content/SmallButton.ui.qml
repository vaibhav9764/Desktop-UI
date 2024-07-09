

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
    property alias smallBtnText: text1.text
    property int smallbtnWidth: 200
    property int smallbtnHeight: 60

    id: root
    width: smallbtnWidth
    height: smallbtnHeight
    color: style.greyBg
    radius: style.btnRadius
    border.color: style.smallBtnBorderColor
    border.width: style.smallBtnBorderWidth
    Text {
        id: text1
        width: 0.8 * parent.width
        height: 0.8 * parent.height
        color: style.grayNavFont

        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: style.normalFontSize
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.weight: Font.DemiBold
        anchors.horizontalCenter: parent.horizontalCenter
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
    }
    states: [
        State {
            name: "secondaryState"

            PropertyChanges {
                target: root
                color: style.btnBg
                radius: style.btnRadius
                border.width: 0
                state: ""
            }

            PropertyChanges {
                target: text1
                color: style.whiteNavFont
            }
        }
    ]
}
