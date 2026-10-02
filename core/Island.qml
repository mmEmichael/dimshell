import QtQuick

Rectangle {
    id: root

    // Всё, что вложено в Island { ... }, попадает в host
    default property alias content: host.data

    signal tapped()
    readonly property bool hovered: hover.hovered

    // Размер и форма берутся из токенов, ширина считается от содержимого
    width: host.childrenRect.width + 2 * Theme.pillPadding
    height: Theme.pillHeight
    radius: Theme.pillPadding
    color: Theme.pillBg

    // Позиция: по центру сверху, отступ из темы
    y: Theme.pillTopMargin
    anchors.horizontalCenter: parent.horizontalCenter

    Item {
        id: host
        anchors.centerIn: parent
        width: childrenRect.width
        height: childrenRect.height
    }

    TapHandler {
        onTapped: root.tapped()
    }

    HoverHandler {
        id: hover
        cursorShape: Qt.PointingHandCursor
    }
}
