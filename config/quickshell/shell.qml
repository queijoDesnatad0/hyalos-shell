import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

ShellRoot {
    PanelWindow {
        id: root

        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 32
        color: 'transparent'

        Rectangle {
            anchors.fill: parent
            color: '#40f0f0f0'
        }

        RowLayout {
            anchors.fill: parent
            anchors.leftMargin: 4
            anchors.rightMargin: 4
            spacing: 7

            Clock {}

            Item { Layout.fillWidth: true}

            Workspaces {}
        }
    }
}