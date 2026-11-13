import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

RowLayout {
    spacing: 2

    Repeater {
        model: 10
        
        Rectangle {
            anchors.verticalCenter: parent.verticalCenter
            width:  15
            height: 15

            property bool isActive : Hyprland.focusedWorkspace?.id === (index + 1)

            color: isActive ? '#8000FF' : '#80FFFFFF'

            radius: 4
            antialiasing: true
        }
    }
}
