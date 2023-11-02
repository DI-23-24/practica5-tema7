import QtQuick 2.15
import QtQuick.Controls 2.15
import QtCharts 2.3
import QtQuick.Layouts 1.12

Page {
    id: page
    width: 640
    height: 480
    property alias pageHeight: page.height
    property alias pageWidth: page.width
    property real presupuesto: 1000
    property real gastos: 250

    Label {
        id: titulo
        text: "GESTIÓN DE PRESUPUESTO"
    }

    ChartView {
        id: grafica
        width: 300
        height: 300
        PieSeries {
            name: "PieSeries"
            holeSize: 0.5
            PieSlice {
                label: "Gastos"
                value: page.gastos
            }

            PieSlice {
                label: "Restante"
                value: page.presupuesto - page.gastos
            }
        }
    }

    Button {
        id: vergastos
        text: "Ver lista de gastos"
    }

    RoundButton {
        id: anyadirgasto
        width: 55
        height: 55
        text: "+"
        highlighted: true
    }
}
