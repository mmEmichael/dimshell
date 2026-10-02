pragma Singleton

import QtQuick
import Quickshell

Singleton {
    // --- Цвета ---
    readonly property color pillBg: "#111111"
    readonly property color textPrimary: "#f2f2f2"
    readonly property color textSecondary: "#9a9a9a"
    readonly property color accent: "#7aa2f7"

    // --- Геометрия pill ---
    readonly property int gap: 32            // высота gap'а в niri
    readonly property int pillHeight: 28
    readonly property int pillTopMargin: 2   // (gap - pillHeight) / 2
    readonly property int pillPadding: 8    // горизонтальный отступ внутри pill
    readonly property int pillRadius: 4

    // --- Окно ---
    readonly property int windowHeight: 400

    // --- Шрифт ---
    readonly property string fontFamily: "sans-serif"
    readonly property int fontSize: 16
}
