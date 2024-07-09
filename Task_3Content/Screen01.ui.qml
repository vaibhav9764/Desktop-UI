

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import Task_3

Rectangle {
    id: rectangle
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight

    LeftNavigationMenu {
        id: leftNavigationMenu
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 0
        anchors.topMargin: 0
        leftHeight: parent.height
        leftWidth: 0.24 * parent.width
    }

    RightSection {
        id: rightSection
        y: 0
        anchors.left: leftNavigationMenu.right
        anchors.right: parent.right
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        rightHeight: parent.height
        rightWidth: 0.76 * parent.width
    }
}
