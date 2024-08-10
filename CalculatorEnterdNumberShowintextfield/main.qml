import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Calculator"
  // signal buttonClicked(string value)

    ColumnLayout {
        anchors.fill: parent

        Rectangle {
            height: parent.height / 6
            width: parent.width
            color: "blue"
            TextField {
                id: display
                text: ""
                height: parent.height
                width: parent.width
            }
        }

        GridLayout {
            rows: 5
            columns: 4


            Repeater {
                model: ["C", "()", "%", "/",
                        "7", "8", "9", "*",
                        "4", "5", "6", "-",
                        "1", "2", "3", "+",
                        "+/-", "0", ".", "="]

                Button {
                    text: modelData
                    // Layout.fillWidth: true
                    // Layout.fillHeight: true
                    onClicked: buttonClicked(text)
                }
                }
            }
        }


//     function buttonClicked(text1)
//     {
//         // console.log("text is"+display.text1)
//         if("="===text1)
//         {

//         }
//         else

//             if("C"===text1)
//             {
//                 display.text="";
//             }

//         else{

//          display.text += text1;

// }
//     }


    function buttonClicked(text) {
        if (text === "=") {
            // Calculate result
             var result = eval(display.text);
            // console.log("result is"+result)
            display.text = result;
        } else if (text === "C") {
            // Clear display
            display.text = "";
        } else {
            // Append text to display
            display.text += text;
        }
    }
}
