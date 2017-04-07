import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1

ApplicationWindow {
  width: 400
  height: 300
  title: "of Signals & Slots"
  Component.onCompleted: visible = true

  Connections {
      target: test
      onClicked: text.text = "New name"
  }

  ColumnLayout {

    anchors.fill: parent

    Text {
      id: text
      anchors.horizontalCenter: parent.horizontalCenter
      text: test.name
    }

    Button {
      id: butt
      anchors.horizontalCenter: parent.horizontalCenter
      text: "Notify Rust"
      onClicked: test.click()
    }
  }
}
