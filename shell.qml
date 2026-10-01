import Quickshell
import Quickshell.Wayland
import QtQuick

PanelWindow {
    anchors {
        top: true
        left: true
        right: true
    }
    implicitHeight: 32
    exclusiveZone: 0          // не двигаем окна
    color: "transparent"

    WlrLayershell.layer: WlrLayer.Top
    WlrLayershell.namespace: "dimshell"

    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 3
        width: 120
        height: 24
        radius: 8
        color: "#111"

        Text {
            anchors.centerIn: parent
            color: "white"
            text: Qt.formatTime(new Date(), "hh:mm")
        }
    }
}
