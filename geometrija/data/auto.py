import sqlite3

conn = sqlite3.connect('auto.db')
c = conn.cursor()

# query = '''
# CREATE TABLE IF NOT EXISTS automobiliai (
#     id INTEGER PRIMARY KEY AUTOINCREMENT,
#     marke VARCHAR(50),
#     modelis VARCHAR(50),
#     spalva VARCHAR(50),
#     pag_metai VARCHAR(50),
#     kaina INTEGER(50)
# );
# '''

while True:
    print("""---- Automobiliu katalogas----
    1. Ivesti nauja automobili.
    2. Ieskoti automobilio kataloge. 
    visa kita = iseiti
    """)
    choice = input("Pasirinkimas: ")
    if choice == "1":
        marke = input("Iveskite marke: ")
        modelis = input("Iveskite modeli: ")
        spalva = input("Iveskite spalva: ")
        pag_metai = input("Iveskite pagaminimo (metus):")
        kaina = int(input("Iveskite kaina: "))
        with conn:
            c.execute("""INSERT INTO automobiliai(marke, modelis, spalva, pag_metai, kaina) VALUES(?, ?, ?, ?, ?)""", (marke, modelis, spalva, pag_metai, kaina))
        print(f"{marke} {modelis} buvo ikeltas")
        

    elif choice == "2":
        print("""====Pasirinkite pagal ka norite ieskoti====
        1. Marke
        2. Modelis
        3. Spalva
        4. Pagaminimo metai
        5. Kaina
        6. iseiti
        """)
        choice = input("Pasirinkite: ")
        if choice == "1":
            marke = input("Kokia marke: ")
            with conn:
                c.execute('SELECT * FROM automobiliai WHERE marke = ?', (marke, ))
                automobiliai = c.fetchall()

            if automobiliai and len(automobiliai) > 0:
                for masina in automobiliai:
                    print(masina)
        elif choice == 2:
            pass
        elif choice == 3:
            pass
        elif choice == 4:
            pass
        elif choice == 5:
            pass 
        else:
            continue
    
        
    else:
        break

#c.execute(query)
conn.commit()
conn.close