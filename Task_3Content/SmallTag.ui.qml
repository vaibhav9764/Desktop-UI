

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
    property alias tagText: text2.text
    property int tagWidth: 100
    property int tagHeight: 36
    property color tagColor: "#282737"

    id: tag
    width: text2.width + 20

    height: tagHeight
    color: tagColor
    radius: style.tagRadius
    border.width: 0

    Text {
        id: text2
        width: implicitWidth
        height: 20
        color: style.whiteNavFont

        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: style.smallFontSize
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
