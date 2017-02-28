import QtQuick 2.0
import QtQuick.Window 2.0
import QtWebEngine 1.4

Item {
    Window {
        id: win
        width: 1024
        height: 768
        visible: true
        WebEngineView {
            id: wev
            Timer {
                running: true
                repeat: false
                interval: 1000
                //onTriggered: {wev.x = 100; wev.y = 100; console.log("ALPHA");}
                onTriggered: {win.x = 100; win.y = 100; console.log("ALPHA");}
            }
            width: 800
            height: 600
            url: "http://facebook.com"
        }
    }
}
