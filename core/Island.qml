import QtQuick

import "."

Rectangle {
    id: root

    property bool expanded: false
    property real expandedWidth: Theme.expandedWidth
    property real expandedHeight: Theme.expandedHeight

    // Два слота вместо одного default-alias
    property alias compactContent: compactHost.data
    property alias expandedContent: expandedHost.data

    signal tapped()
    readonly property bool hovered: hover.hovered

    width: expanded ? expandedWidth
                    : compactHost.childrenRect.width + 2 * Theme.pillPadding
    height: expanded ? expandedHeight : Theme.pillHeight
    radius: Math.min(height / 2, Theme.expandedRadius)
    color: Theme.pillBg
    clip: true

    y: Theme.pillTopMargin
    anchors.horizontalCenter: parent.horizontalCenter

    Behavior on width  { SpringAnimation { spring: 4; damping: 0.3; epsilon: 0.25 } }
    Behavior on height { SpringAnimation { spring: 4; damping: 0.3; epsilon: 0.25 } }

    // Компактный вид
    Item {
        id: compactHost
        anchors.centerIn: parent
        width: childrenRect.width
        height: childrenRect.height
        opacity: root.expanded ? 0 : 1
        visible: opacity > 0
        Behavior on opacity { NumberAnimation { duration: 120 } }
    }

    // Раскрытый вид
    Item {
        id: expandedHost
        anchors.fill: parent
        anchors.margins: Theme.pillPadding
        opacity: root.expanded ? 1 : 0
        visible: opacity > 0
        Behavior on opacity {
            SequentialAnimation {
                PauseAnimation { duration: root.expanded ? 120 : 0 }
                NumberAnimation { duration: 160 }
            }
        }
    }

    TapHandler {
        onTapped: root.tapped()
    }

    HoverHandler {
        id: hover
        cursorShape: Qt.PointingHandCursor
    }
}
