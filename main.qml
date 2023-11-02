import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: app
    width: 640
    height: 480
    visible: true
    title: qsTr("Gestor de Presupuesto")

    SwipeView {
        id: swipeView
        anchors.fill: parent

        Page1Form {
            pageHeight: app.height
            pageWidth: app.width
        }

        Page2Form {
            pageHeight: app.height
            pageWidth: app.width
        }

        Page3Form {
            pageHeight: app.height
            pageWidth: app.width
        }
    }
}
