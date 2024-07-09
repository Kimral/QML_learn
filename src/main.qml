import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Window 2.0

ApplicationWindow {
    id: rectangle
    x: 0
    y: 0
    width:  425
    height: 500
    color: "#5bedbc"
    visible: true

    property int counter: 0

    Label {
        id: label
        text: "A Label text"
        y:  200
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter:   parent.verticalCenter
    }

    Button{
        id: button1
        text: "Click me"
        anchors.verticalCenterOffset: 29
        anchors.horizontalCenterOffset: 0
        //y:    400
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter:   parent.verticalCenter

        onClicked: {
            console.info("Button was clicked")
            label.text = "Button was clicked => " + counter + " times "
            counter += 1
        }
    }
}
