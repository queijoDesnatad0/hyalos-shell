import Quickshell
import QtQuick
import QtQuick.Layouts

ColumnLayout {
    anchors.verticalCenter: parent.verticalCenter
    spacing: 0
     
    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    Text {
        id: timeText
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 12
        color: '#FFFFFF'
        text: Qt.formatDateTime(clock.date, "hh:mm")
    }

    Text {
        id: dateText
        font.pixelSize: 12
        color: '#FFFFFF'
        text: Qt.formatDateTime(clock.date, "yyyy/MM/dd")     
    }

}