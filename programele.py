import random
mesa = ["jautiena", "vištiena", "kiauliena", "žuvis"]
zolyte = ["morkų salotos", "kinietiškos salotos", "agurkas su grietine", "salotos lapas"]
gerimai = ["baltas vynas", "brendžiukas", "tekila", "cola be leduku"]
print("Sveiki")
print("Šiandien pasistenksiu sudaryti tavo pietu racijoną:")
name = str(input("Pirmiausia susipažinkime, tai kuo jus vardu: "))
name_big = name.upper()
print("Pasirinkite ką Jus mieliau valgote:")
print("1 - Mieliau valgau mėsytę")
print("2 - Mieliau valgau žolytę")

pasirinkimas = int(input("Įveskite savo pasirinkimą: 1 ar 2 "))
if pasirinkimas == 1:
    print(name_big, "voooou ar tau negaila tu skanių gyvunėlių? \U0001F602 ")
    print(name_big, "viskas gerai mesėdi šiandien valgysi - ", (random.choice(mesa)), "garnyrui pasimėgauk - "\
          , (random.choice(zolyte)), "ir užšigersi - ", (random.choice(gerimai)))
    print("SKANAUS!!!")
elif pasirinkimas == 2:
    print(name_big, " na nieko, visi mes gyvenime padarome klaidų \U0001F602")
    print(name_big, " kad ir kaip ten yra, bet šiandien megausiesi - ", (random.choice(zolyte))\
          , "na ir žinoma galesi užsigerti - ", (random.choice(gerimai)))
    print("SKANAUS!!!")
else:
    print(name_big, "jau kažka ne taip paspaudei, buk geras bandyk iš naujo")
    

print("Ši programele buvo kurta mokymosi tikslais, ir nenorint ižeisti ", name_big , "linkiu tau gražios dienos \U0001F602")
          



