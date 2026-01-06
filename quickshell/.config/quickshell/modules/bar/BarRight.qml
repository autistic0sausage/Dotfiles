import QtQuick
import QtQuick.Layouts
import qs.config

Item {
    id: root
    Layout.fillWidth: true
    Layout.preferredHeight: Config.bar_height
    Layout.rightMargin: Config.hyprland_gap

    Text {
        // text: "This is a Text using Iosevka Font"
        font.family: "Iosevka Nerd Font Mono"
        font.pixelSize: Config.font_base
        color: Config.color_foreground
    }

    RowLayout {
        anchors.verticalCenter: root.verticalCenter
        anchors.right: root.right

        spacing: Config.spacing_5xl

        BarNotifications {}
        BarTray {}
        BarBattery {}
        BarTime {}
    }
}
