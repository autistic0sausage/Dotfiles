import QtQuick
import qs.services
import qs.config

Text {
    property color textColor: "white"
    text: FormattedTime.time
    font.weight: 600
    // font.family: "Sans-Serif"
    font.family: "Iosevka Nerd Font Mono"
    // font.family: "JetBrainsMono Nerd Font"
    font.pixelSize: Config.font_base
    color: Config.color_foreground
}
