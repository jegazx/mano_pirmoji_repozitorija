class Skaiciuokle:
    def __init__(self, paskola, metines, terminas):
        self.paskola = paskola
        self.metines = metines
        self.terminas = terminas

    def menesines(self):
        return self.metines / 12
    
    def imokos(self):
        r = self.menesines()
        n = self.terminas
        p = self.paskola
        return (r * p) / (1-(1+r)**-n)
    

