import PySimpleGUI as sg

# Apibrėžiame lango turinį
layout = [
    [sg.Text("Koks tavo vardas?")],
    [sg.Input(key="-INPUT-")],
    [sg.Text(size=(40, 1), key="-OUTPUT-")],
    [sg.Button("patvirtinti"), sg.Button("Iseiti")]
]
# Sukuriamas langas
window = sg.Window("Lango Pavadinimas", layout)

# Atvaizduojame ir bendraujame su langu, naudodami įvykių kilpą
while True:
    event, values = window.read()
    # Žiūrime, ar vartotojas nori išeiti, ar langas buvo uždarytas
    if event == sg.WINDOW_CLOSED or event == "Išeiti":
        break
    # Išvedame pranešimą į langą
    window["-OUTPUT-"].update(
        "Sveiki " + values["-INPUT-"] + "! Nusišypsokite dienai :),text_color='#F7D060'"
    )

# Baigiame darbą, pašalindami langą iš ekrano
window.close()