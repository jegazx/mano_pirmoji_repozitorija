import os
# Pirma užduotis
# Sukurkite naują katalogą pavadinimu "Mano_Katalogas" 
# dabartinėje darbo vietoje. Patikrinkite,
#  ar katalogas buvo sėkmingai sukurtas, 
# ir atspausdinkite rezultatą.

# Antra užduotis
# Parašykite programą, kuri peržiūrėtų dabartinį darbo 
# katalogą ir atspausdintų visus rastus failus bei 
# katalogus.

# Trečia užduotis
# Sukurkite naują failą pavadinimu "testas.txt"
#  dabartinėje darbo vietoje. Tada parašykite programą,
#  kuri patikrintų, ar failas "testas.txt" egzistuoja,
#  ir trintų jį, jei egzistuoja.
# Atspausdinkite rezultatą, kad failas buvo sėkmingai 
# ištrintas.


naujas = "naujas_katalogas"
if not os.path.exists(naujas):
    os.makedirs(naujas)
    print(f"naujas katalogas sukurtas")
else:
    print("tokia direktorija jau yra")

vieta = os.getcwd()
print(vieta)
listas = os.listdir()
print(listas)

naujas_txt = "testas.txt"
if os.path.exists(naujas_txt):
    os.remove(naujas_txt)
    print(f"failas {naujas_txt} buvo istrintas")
else:
    print(f"failas {naujas_txt} nebuvo rastas")