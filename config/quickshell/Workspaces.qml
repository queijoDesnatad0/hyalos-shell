import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

RowLayout {
    spacing: 4

    Repeater {
        model: 10
        
        Rectangle {
            anchors.verticalCenter: parent.verticalCenter
            width: 28
            height: 20

            property bool isActive : Hyprland.focusedWorkspace?.id === (index + 1)

            color: isActive ? '#008FE2' : '#80ffffff'

            radius: 4
            antialiasing: true
        }
    }
}
