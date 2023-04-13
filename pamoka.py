demoSąrašas = ["gyvybė", 42, "visata", 6, "ir", 9]
print("demoSąrašas = ", demoSąrašas)
demoSąrašas.append("oras")
print("po 'oras' pridėjimo, demoSąrašas atrodo taip:")
print(demoSąrašas)
print("len(demoSąrašas) =", len(demoSąrašas))
print("demoSąrašas.index(42) =", demoSąrašas.index(42))
print("demoSąrašas[1] =", demoSąrašas[1])

# o dabar mes pereisime per visą sąrašą "for" ciklu
for c in range(len(demoSąrašas)):
    print("demoSąrašas[", c, "] =", demoSąrašas[c])

del demoSąrašas[2]
print("Po 'visata' pašalinimo, demoSąrašas atrodo taip:")
print(demoSąrašas)
if "gyvybė" in demoSąrašas:
    print("'gyvybė' buvo rasta kintamajame demoSąrašas")
else:
    print("'gyvybė' nebuvo rasta kintamajame demoSąrašas")

if "ameba" in demoSąrašas:
    print("'ameba' buvo rasta kintamajame demoSąrašas")

if "ameba" not in demoSąrašas:
    print("'ameba' nebuvo rasta kintamajame demoSąrašas")

kitasSąrašas = [42, 7, 0, 123]
kitasSąrašas.sort()
print("Išrikiuotas kitasSąrašas atrodo taip", kitasSąrašas)