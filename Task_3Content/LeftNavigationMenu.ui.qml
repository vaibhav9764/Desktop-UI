

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
// import QtQuickUltralite.Layers

Rectangle {

    property int leftWidth: 380
    property int leftHeight: 900

    Style {
        id: style
    }

    Column {
        id: column4
        y: 0
        width: parent.width
        height: parent.height * 0.9
        bottomPadding: 0
        topPadding: 0
        spacing: 2

        Rectangle {
            id: rectangle
            width: 0.9 * parent.width
            height: 0.2 * parent.height
            color: style.navBg
            anchors.horizontalCenter: parent.horizontalCenter

            Row {
                id: row
                anchors.fill: parent
                leftPadding: 0
                spacing: 0

                Column {
                    id: column
                    width: 0.7 * parent.width
                    height: parent.height
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 0
                    anchors.topMargin: 0
                    topPadding: 25
                    spacing: 25

                    Text {
                        id: text1
                        width: parent.width
                        height: 25
                        color: style.whiteNavFont
                        text: qsTr("Robin Fowler")
                        font.pixelSize: style.mediumFontSize
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    SmallTag {
                        tagColor: style.tagGrey
                        tagWidth: 0.6 * parent.width
                        tagHeight: 36
                        tagText: "Starter"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }

                Column {
                    id: column1
                    width: 0.3 * parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 0
                    anchors.topMargin: 0

                    Image {
                        id: profile
                        width: style.profileWidth
                        height: style.profileHeight
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.rightMargin: 0
                        anchors.topMargin: 30
                        source: "images/profile.jpg"
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }
        }

        Rectangle {
            id: rectangle1
            width: 0.9 * parent.width
            height: 0.6 * parent.height
            color: style.navBg
            anchors.horizontalCenter: parent.horizontalCenter

            Column {
                id: column2
                anchors.fill: parent
                spacing: 5

                CustomButtonNav {
                    id: customButtonNav
                    anchors.horizontalCenter: parent.horizontalCenter
                    buttonImageSource: "images/dashboard.svg"
                    buttonText: "Dashboard"
                    btnHeight: 0.15 * parent.height
                    btnWidth: 0.9 * parent.width
                }

                CustomButtonNav {
                    id: customButtonNav1
                    anchors.horizontalCenter: parent.horizontalCenter
                    buttonImageSource: "images/projects.svg"
                    buttonText: "Projects"
                    btnHeight: 0.15 * parent.height
                    btnWidth: 0.9 * parent.width
                }

                CustomButtonNav {
                    id: customButtonNav2
                    anchors.horizontalCenter: parent.horizontalCenter
                    buttonImageSource: "images/invoices.svg"
                    buttonText: "Invoices"
                    btnHeight: 0.15 * parent.height
                    btnWidth: 0.9 * parent.width
                }

                CustomButtonNav {
                    id: customButtonNav3
                    anchors.horizontalCenter: parent.horizontalCenter
                    buttonImageSource: "images/reports.svg"
                    buttonText: "Reports"
                    btnHeight: 0.15 * parent.height
                    btnWidth: 0.9 * parent.width
                }

                CustomButtonNav {
                    id: customButtonNav4
                    anchors.horizontalCenter: parent.horizontalCenter
                    buttonImageSource: "images/setting.svg"
                    buttonText: "Setting"
                    btnHeight: 0.15 * parent.height
                    btnWidth: 0.9 * parent.width
                }
            }
        }

        Rectangle {
            id: rectangle2
            width: 0.75 * parent.width
            height: 0.16 * parent.height
            color: style.greyBg
            radius: style.btnRadius
            border.width: 0
            anchors.horizontalCenter: parent.horizontalCenter

            Column {
                id: column3
                anchors.fill: parent
                topPadding: 20
                spacing: 10

                Text {
                    id: text3
                    width: 0.9 * parent.width
                    height: 0.3 * parent.height
                    color: style.grayNavFont
                    text: qsTr("Having troubles ?")
                    font.pixelSize: style.normalFontSize
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text4
                    width: 0.9 * parent.width
                    height: 0.3 * parent.height
                    color: style.whiteNavFont
                    text: qsTr("Contact us")
                    font.pixelSize: style.normalFontSize
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.weight: Font.DemiBold
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    id: root
    width: leftWidth
    height: leftHeight
    color: style.navBg
}
