import Quickshell
import QtQuick
import QtQuick.Layouts

ColumnLayout {
     anchors.centerIn: parent
     spacing: 0
     
    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    Text {
        id: timeText
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 11
        color: '#008FE2'
        text: Qt.formatDateTime(clock.date, "hh:mm")
    }

    Text {
        id: dateText
        font.pixelSize: 11
        color: '#008FE2'
        text: Qt.formatDateTime(clock.date, "yyyy/MM/dd")     
    }

}