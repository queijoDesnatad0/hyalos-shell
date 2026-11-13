import Quickshell
import Quickshell.Services.Pipewire
import QtQuick
import QtQuick.Layouts

RowLayout {
    id: root
    spacing: 4

    PwObjectTracker {
        objects: [root.sink]
    }

    property var sink: Pipewire.defaultAudioSink

    readonly property bool ready: sink && sink.ready
    readonly property bool muted: ready && sink.audio.muted
    readonly property int vol: ready ? Math.round(sink.audio.volume * 100) : 0

    readonly property string icon: {
        if (!ready) return String.fromCodePoint(0xF0581)
        if (muted) return String.fromCodePoint(0xEEE8)

        if (vol === 0) return String.fromCodePoint(0xEEE8)
        if (vol <= 25) return String.fromCodePoint(0xF026)
        if (vol <= 50) return String.fromCodePoint(0xF027)
        if (vol <= 75) return String.fromCodePoint(0xEFCF)
        if (vol <= 100) return String.fromCodePoint(0xF028)

        return String.fromCodePoint(0xF057E)
    }
    
    Text {
        text: root.icon
        color: '#FFFFFF'

        font {
            family: 'GoogleSansCode Nerd Font'
            pixelSize: 20
        }
    }

    Text {
        text: {
            if (!root.ready) return "*"
            if (root.muted) return ""

            return root.vol + "%"
        }

        color: "#FFFFFF"

        font {
            family: 'GoogleSansCode Nerd Font'
            pixelSize: 12
        }
    }

}