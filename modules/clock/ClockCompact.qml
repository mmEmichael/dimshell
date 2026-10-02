import QtQuick
import Quickshell
import "../../core"

Item {
    id: root

    // Формат можно переопределять снаружи (позже из конфига)
    property string format: "hh:mm"

    implicitWidth: label.implicitWidth
    implicitHeight: label.implicitHeight

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }

    Text {
        id: label
        anchors.centerIn: parent
        text: Qt.formatDateTime(clock.date, root.format)
        color: Theme.textPrimary
        font.family: Theme.fontFamily
        font.pixelSize: Theme.fontSize
    }
}
