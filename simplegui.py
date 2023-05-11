import PySimpleGUI as sg 


layout = [
    [sg.Text("Koks tavo vardas?")],
    [sg.Input(key="-INPUT-")],
    [sg.Text(size=(40, 1), key="-OUTPUT-")],
    [sg.Button("patvirtinti"), sg.Button("Iseiti")]
]

window = sg.Window("Cool programa", layout)

while True:
    event, values = window.read()
    # Žiūrime, ar vartotojas nori išeiti, ar langas buvo uždarytas
    if event == sg.WINDOW_CLOSED or event == "Išeiti":
        break
    # Išvedame pranešimą į langą
    window["-OUTPUT-"].update(
        "Sveiki " + values["-INPUT-"] + "! Nusišypsokite dienai :),text_color='#F7D060'"
    )


    window.close()