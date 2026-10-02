import Quickshell
import Quickshell.Wayland
import QtQuick

import "core"
import "modules/clock"

// qmllint disable uncreatable-type
PanelWindow {
    anchors {
        top: true
        left: true
        right: true
    }
    implicitHeight: 400
    exclusiveZone: 0          // не двигаем окна
    color: "transparent"

    WlrLayershell.layer: WlrLayer.Top
    WlrLayershell.namespace: "dimshell"

    mask: Region{item: island}

    Island {
        id: island
        onTapped: console.info("clicked")

        ClockCompact {}
    }
}
