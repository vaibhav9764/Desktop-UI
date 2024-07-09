

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property alias text1FontpixelSize: heading.font.pixelSize
    property int expWidth: 700

    property alias expImg: profile.source
    property alias expHeading: heading.text
    property alias expName: name.text
    property alias expTag: tag.tagText
    property color expTagColor: "red"
    property alias expContent: text3.text
    id: root
    width: expWidth
    height: header.height

    Style {
        id: style
    }
    Rectangle {
        id: rectangle
        color: style.navBg
        radius: style.btnRadius
        border.width: 0
        anchors.fill: parent

        Row {
            id: header
            width: parent.width
            height: 140
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Column {
                id: column
                width: 0.2 * parent.width
                height: parent.height
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 0
                anchors.topMargin: 0

                Image {
                    id: profile
                    width: style.profileWidth
                    height: style.profileHeight
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/profile.jpg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
            }

            Row {
                id: row2
                width: 0.8 * parent.width
                height: parent.height
                anchors.left: column.right
                anchors.top: parent.top
                anchors.leftMargin: 0
                anchors.topMargin: 0

                Column {
                    id: column2
                    width: 0.8 * parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    topPadding: 10
                    spacing: 10

                    Text {
                        id: heading
                        width: 0.9 * parent.width
                        height: 0.4 * parent.height
                        color: style.whiteNavFont

                        font.pixelSize: style.mediumFontSize
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                    }

                    Row {
                        id: row1
                        width: 0.9 * parent.width
                        height: 0.4 * parent.height
                        spacing: 20

                        SmallTag {
                            id: tag
                            anchors.verticalCenter: parent.verticalCenter
                            tagColor: expTagColor
                            tagText: expTag
                            tagHeight: 0.52 * parent.height
                            tagWidth: 0.15 * parent.width
                        }

                        Text {
                            id: name
                            height: 0.5 * parent.height
                            width: 0.3 * parent.width
                            color: style.grayNavFont

                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: style.normalFontSize
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.Wrap
                        }
                    }
                }

                Column {
                    id: column1
                    width: 0.2 * parent.width
                    height: parent.height
                    anchors.left: column2.right
                    anchors.top: parent.top
                    anchors.leftMargin: 0
                    anchors.topMargin: 0

                    Image {
                        id: down
                        width: 50
                        height: 50
                        anchors.verticalCenter: parent.verticalCenter
                        source: "images/down.svg"
                        anchors.horizontalCenter: parent.horizontalCenter
                        fillMode: Image.PreserveAspectFit

                        MouseArea {
                            id: mouseArea
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor

                            Connections {
                                target: mouseArea
                                onClicked: if (root.state === "")
                                               root.state = "clickedState"
                                           else
                                               root.state = ""
                            }
                        }
                    }
                }
            }
        }

        Row {
            id: row3
            width: parent.width
            height: column4.height
            visible: false
            anchors.left: parent.left
            anchors.top: header.bottom
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Column {
                id: column3
                width: 0.2 * parent.width
                height: column4.height
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 0
                anchors.topMargin: 0
            }

            Column {
                id: column4
                width: 0.8 * parent.width
                height: implicitHeight
                anchors.left: column3.right
                anchors.top: parent.top
                anchors.leftMargin: 0
                anchors.topMargin: 0
                spacing: 30

                Text {
                    id: text3
                    width: 0.9 * parent.width
                    height: implicitHeight
                    color: style.grayNavFont

                    font.pixelSize: style.smallFontSize
                    horizontalAlignment: Text.AlignLeft
                    wrapMode: Text.Wrap
                }

                ApplySection {
                    id: applySection
                    height: 85
                    applySectionWidth: 0.9 * parent.width
                    applySectionHeight: 100
                }
            }
        }
    }
    states: [
        State {
            name: "clickedState"

            PropertyChanges {
                target: row3
                visible: true
                bottomPadding: 10
            }
            PropertyChanges {
                target: root
                height: header.height + row3.height
            }

            PropertyChanges {
                target: column4
                topPadding: 10
                bottomPadding: 30
            }
            PropertyChanges {
                target: down
                source: "images/up.svg"
            }

            PropertyChanges {
                target: header
                topPadding: 5
            }
        }
    ]
}
