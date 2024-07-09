

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15

import QtQuick.Controls 2.15

import QtQuick.Studio.Components




Rectangle {
    property alias buttonText: text1.text
    property alias buttonImageSource: icon.source
    property int btnWidth: 320
    property int btnHeight: 70

    id: root
    width: btnWidth
    height: btnHeight
    color: style.navBg
    radius: 0
    border.width: 0

    Style {
        id: style
    }

    Row {
        id: row
        anchors.fill: parent
        leftPadding: 10
        spacing: 20

        Image {
            id: icon
            width: 25
            height: 25
            anchors.verticalCenter: parent.verticalCenter

            // colorOverlay: style.grayNavFont
        }

        Text {
            id: text1
            width: 0.5 * parent.width
            height: 0.8 * parent.height
            color: style.grayNavFont
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: icon.right
            anchors.leftMargin: 0.1 * parent.width
            font.pixelSize: style.normalFontSize
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
        }

        Image {
            id: arrow
            width: 25
            height: 25
            visible: false
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.verticalCenterOffset: 1


            Image {
                id: frontArrow
                x: 2
                y: 1
                source: "images/frontArrow.svg"
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        hoverEnabled: true

        Connections {
            target: mouseArea
            onClicked: root.state = "clickedState"
        }

        Connections {
            target: mouseArea
            onEntered: if (root.state === "")
                           root.state = "hoverState"
        }

        Connections {
            target: mouseArea
            onExited: if (root.state === "hoverState")
                          root.state = ""
        }
    }

    states: [
        State {
            name: "hoverState"

            PropertyChanges {
                target: text1
                color: style.whiteNavFont
            }

            PropertyChanges {
                target: root
                color: style.btnBg
                radius: style.btnRadius
            }
        },
        State {
            name: "clickedState"

            PropertyChanges {
                target: text1
                color: style.whiteNavFont
                font.weight: Font.DemiBold
            }

            PropertyChanges {
                target: arrow
                visible: true
            }

            PropertyChanges {
                target: root
                color: style.btnBg
                radius: style.btnRadius
            }

            PropertyChanges {
                target: frontArrow
                color: style.whiteNavFont
            }
        }
    ]
}
