class Pokemon:

    # constructor
    def __init__(self, nombre, nivel=1, ps=1, ataque=1, defensa=1, ataqueEspecial=1, defensaEspecial=1, 
                 velocidad=1, tipos=set(), movimientos=set(), imgUrl=""):
        self.nombre = nombre
        self.tipos = tipos
        self.nivel = nivel
        self.ps = ps
        self.ataque = ataque
        self.defensa = defensa
        self.ataqueEspecial = ataqueEspecial
        self.defensaEspecial = defensaEspecial
        self.velocidad = velocidad
        self.movimientos = movimientos
        self.imgUrl = imgUrl
    
    # getters y setters

    def getNombre(self):
        return self.nombre

    def getNivel(self):
        return self.nivel

    def getTipos(self):
        return self.tipos

    def getPs(self):
        return self.ps

    def getAtaque(self):
        return self.ataque

    def getAtaqueEspecial(self):
        return self.ataqueEspecial

    def getDefensa(self):
        return self.defensa

    def getDefensaEspecial(self):
        return self.defensaEspecial
    
    def getVelocidad(self):
        return self.velocidad
    
    def getMovimientos(self):
        return self.movimientos

    def getImgUrl(self):
        return self.imgUrl

    def setNombre(self, nombre):
        self.nombre = nombre
    
    def setNivel(self, nivel):
        self.nivel = nivel
    
    def setTipos(self, tipos):
        self.tipos = tipos
    
    def setPs(self, ps):
        self.ps = ps
    
    def setAtaque(self, ataque):
        self.ataque = ataque
    
    def setAtaqueEspecial(self, ataqueEspecial):
        self.ataqueEspecial = ataqueEspecial
    
    def setDefensa(self, defensa):
        self.defensa = defensa

    def setDefensaEspecial(self, defensaEspecial):
        self.defensaEspecial = defensaEspecial

    def setVelocidad(self, velocidad):
        self.velocidad = velocidad
    
    def setMovimientos(self, movimientos):
        self.movimientos = movimientos

    def setImgUrl(self, imgUrl):
        self.imgUrl = imgUrl

    def toString(self):
        value = '{ \n'
        value += '\t nombre: ' + self.nombre + '\n'
        value += '\t nivel: ' + str(self.nivel) + '\n'
        value += '\t tipos:' + str(self.tipos) + '\n'
        value += '\t ps: ' + str(self.ps) + '\n'
        value += '\t ataque: ' + str(self.ataque) + '\n'
        value += '\t defensa: ' + str(self.defensa) + '\n'
        value += '\t ataqueEspecial: ' + str(self.ataqueEspecial) + '\n'
        value += '\t defensaEspecial: ' + str(self.defensaEspecial) + '\n'
        value += '\t velocidad: ' + str(self.velocidad) + '\n'
        value += '\t imagen url: ' + self.imgUrl + '\n'
        value += '\t movimientos: [ \n'
        for m in self.movimientos:
            value += m.toString() + ', \n'
        value += '] \n } \n'
        return value

    # serializa un objeto para poder enviarlo en formato JSON
    def serialize(self):
        movimientos = []
        for i in self.movimientos:
            movimientos.append(i.serialize())
        return {
            "nombre": self.nombre,
            "nivel": self.nivel,
            "tipos": list(self.tipos),
            "ps": self.ps,
            "ataque": self.ataque,
            "defensa": self.defensa,
            "ataqueEspecial:": self.ataqueEspecial,
            "defensaEspecial": self.defensaEspecial,
            "velocidad": self.velocidad,
            "movimientos": movimientos,
            "imgUrl":self.imgUrl
        }

