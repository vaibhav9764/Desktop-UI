

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    property int rightHeight: 900
    property int rightWidth: 800
    Style {
        id: style
    }

    ListModel {
        id: dataList

        ListElement {
            proImg: "images/profile.jpg"
            head: "Design help for e-commerce app"
            userName: "Jason Goza"
            tagName: "mobile"
            tagCol: "#E33B36"
            content: "Design is the process of creating solutions that address specific needs or problems. It involves creativity, problem-solving, and strategic thinking to achieve functional and aesthetically pleasing outcomes. Design can be categorized into several domains, including"
        }

        ListElement {
            proImg: "images/profile.jpg"
            head: "Looking for talented designer"
            userName: "Michael Elser"
            tagName: "branding"
            tagCol: "#282737"
            content: "Focuses on visual communication and the use of typography, imagery, and layout to convey messages or information effectively. Graphic designers often work on branding, advertising, publications, and digital media."
        }

        ListElement {
            proImg: "images/profile.jpg"
            head: "Productivity mobile app for ios"
            userName: "Dora Thai"
            tagName: "mobile"
            tagCol: "#C057BF"
            content: "User Interface (UI) and User Experience (UX) design are concerned with enhancing user satisfaction by improving the usability, accessibility, and pleasure provided in the interaction between the user and the product."
        }

        ListElement {
            proImg: "images/profile.jpg"
            head: "Stick with a minimalistic aesthetic"
            userName: "Roman Goza"
            tagName: "mobile"
            tagCol: "#E33B36"
            content: "Involves designing products, systems, or services that optimize usability, aesthetics, and functionality. Industrial designers create everything from consumer electronics to furniture to vehicles."
        }

        ListElement {
            proImg: "images/profile.jpg"
            head: "Color scheme combinations consistency"
            userName: "Rohit Sharma"
            tagName: "cricket"
            tagCol: "#C057BF"
            content: "Focuses on the creation of clothing and accessories, involving trend analysis, fabric selection, garment construction, and fashion illustration"
        }

        ListElement {
            proImg: "images/profile.jpg"
            head: "Virtual Reality UX for Shopping"
            userName: "Ms Dhoni"
            tagName: "cricket"
            tagCol: "#E33B36"
            content: "Concerned with enhancing interior spaces to achieve a more functional and aesthetically pleasing environment. Interior designers work on residential, commercial, and institutional projects."
        }
        ListElement {
            proImg: "images/profile.jpg"
            head: "Color scheme combinations consistency"
            userName: "Rohit Sharma"
            tagName: "cricket"
            tagCol: "#C057BF"
            content: "Focuses on the creation of clothing and accessories, involving trend analysis, fabric selection, garment construction, and fashion illustration"
        }

        ListElement {
            proImg: "images/profile.jpg"
            head: "Virtual Reality UX for Shopping"
            userName: "Ms Dhoni"
            tagName: "cricket"
            tagCol: "#E33B36"
            content: "Concerned with enhancing interior spaces to achieve a more functional and aesthetically pleasing environment. Interior designers work on residential, commercial, and institutional projects."
        }
        ListElement {
            proImg: "images/profile.jpg"
            head: "Color scheme combinations consistency"
            userName: "Rohit Sharma"
            tagName: "cricket"
            tagCol: "#C057BF"
            content: "Focuses on the creation of clothing and accessories, involving trend analysis, fabric selection, garment construction, and fashion illustration"
        }

        ListElement {
            proImg: "images/profile.jpg"
            head: "Virtual Reality UX for Shopping"
            userName: "Ms Dhoni"
            tagName: "cricket"
            tagCol: "#E33B36"
            content: "Concerned with enhancing interior spaces to achieve a more functional and aesthetically pleasing environment. Interior designers work on residential, commercial, and institutional projects."
        }
    }

    Column {
        id: column
        anchors.fill: parent
        bottomPadding: 10
        topPadding: 10
        spacing: 20

        Rectangle {
            id: rectangle
            width: 0.8 * parent.width
            height: 0.14 * parent.height
            color: style.mainBg
            border.width: 0
            anchors.horizontalCenter: parent.horizontalCenter

            Item {
                id: item1
                width: 0.25 * parent.width
                height: 38
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 0

                Row {
                    id: row
                    anchors.fill: parent
                    spacing: 10

                    Image {
                        id: backArrow
                        anchors.verticalCenter: parent.verticalCenter
                        source: "images/backArrow.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: text1
                        width: 113
                        height: 31
                        color: style.whiteNavFont
                        text: qsTr("Go back")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: style.normalFontSize
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.DemiBold
                    }
                }

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                }
            }

            Rectangle {
                id: rectangle1
                x: 550
                width: 50
                height: 50
                color: style.navBg
                radius: style.btnRadius
                border.width: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 10

                Image {
                    id: search
                    width: 30
                    height: 30
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/search.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit

                    MouseArea {
                        id: mouseArea1
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                    }
                }
            }
        }

        Label {
            id: label
            width: 0.8 * parent.width
            height: 0.06 * parent.height
            color: style.whiteNavFont
            text: qsTr("Suggested projects")
            font.weight: Font.DemiBold
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: style.smallFontSize
        }

        Item {
            id: item2
            width: 0.8 * parent.width
            height: 0.7 * parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            ScrollView {
                id: scrollView
                width: parent.width
                height: parent.height
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                rightPadding: 0
                leftPadding: 0

                Column {
                    id: column1
                    width: parent.width
                    height: parent.height
                    spacing: 20

                    Repeater {
                        id: repeater
                        anchors.fill: parent
                        model: dataList

                        UpdatedExpandSection {
                            anchors.horizontalCenter: parent.horizontalCenter
                            expWidth: scrollView.width
                            expImg: model.proImg
                            expHeading: model.head
                            expName: model.userName
                            expTag: model.tagName
                            expTagColor: model.tagCol
                            expContent: model.content
                        }
                    }
                }
            }
        }

        // ScrollView {
        //     id: scrollView
        //     width: parent.width
        //     height: 0.7 * parent.height
        //     anchors.left: parent.left
        //     anchors.right: parent.right
        //     anchors.leftMargin: 0
        //     anchors.rightMargin: 0

        //     Column {
        //         id: column1
        //         width: 512
        //         anchors.left: parent.left
        //         anchors.top: parent.top
        //         anchors.bottom: parent.bottom
        //         anchors.leftMargin: 95
        //         anchors.topMargin: 0
        //         anchors.bottomMargin: 0
        //         anchors.horizontalCenterOffset: 95
        //         anchors.horizontalCenter: parent.horizontalCenter

        //         spacing: 20

        //         Repeater {
        //             id: repeater
        //             anchors.fill: parent
        //             model: dataList

        //             UpdatedExpandSection {
        //                 anchors.horizontalCenter: parent.horizontalCenter
        //                 expWidth: 0.8 * scrollView.width
        //                 expImg: model.proImg
        //                 expHeading: model.head
        //                 expName: model.userName
        //                 expTag: model.tagName
        //                 expTagColor: model.tagCol
        //                 expContent: model.content
        //             }
        //         }
        //     }
        // }
    }
    id: root
    width: rightWidth
    height: rightHeight
    color: style.mainBg
    property alias rootColor: root.color
}
