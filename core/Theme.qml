pragma Singleton

import QtQuick
import Quickshell

Singleton {
    // --- Схема ---
    // Пока переключается вручную, позже можно читать из gsettings (color-scheme)
    property bool dark: true

    // --- Палитра Adwaita (ориентиры из libadwaita, сверь с документацией) ---
    // Остров всегда тёмный, независимо от схемы
    readonly property color islandBg: "#111111"
    readonly property color islandFg: "#ffffff"

    // Поверхности внутри раскрытой панели
    readonly property color windowBg: dark ? "#242424" : "#fafafa"
    readonly property color windowFg: dark ? "#ffffff" : Qt.rgba(0, 0, 0, 0.8)
    readonly property color cardBg: dark ? Qt.rgba(1, 1, 1, 0.08) : "#ffffff"
    readonly property color popoverBg: dark ? "#36363a" : "#ffffff"

    // Акцент (синий по умолчанию в GNOME)
    readonly property color accentBg: "#6f8396"       // заливки: слайдеры, переключатели
    readonly property color accent: dark ? "#78aeed" : "#1c71d8"  // текст и иконки

    // Статусные цвета
    readonly property color danger: dark ? "#ff7b63" : "#c01c28"
    readonly property color success: dark ? "#8ff0a4" : "#26a269"
    readonly property color warning: dark ? "#f8e45c" : "#cd9309"

    // --- Алиасы, которые уже используются в коде ---
    readonly property color pillBg: islandBg
    readonly property color textPrimary: islandFg
    readonly property color textSecondary: Qt.alpha(islandFg, 0.55)

    // --- Геометрия pill ---
    readonly property int gap: 32            // высота gap'а в niri
    readonly property int pillHeight: 28
    readonly property int pillTopMargin: (gap - pillHeight) / 2
    readonly property int pillPadding: 8     // горизонтальный отступ внутри pill
    readonly property int pillRadius: 4

    // --- Раскрытая панель ---
    readonly property int expandedWidth: 360
    readonly property int expandedHeight: 160
    readonly property int expandedRadius: 12

    // --- Окно ---
    readonly property int windowHeight: 400

    // --- Шрифт ---
    readonly property string fontFamily: "Adwaita Sans"
    readonly property int fontSize: 16
}
