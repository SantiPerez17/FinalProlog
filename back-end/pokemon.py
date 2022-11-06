class Pokemon:

    # constructor
    def __init__(self, nombre, nivel=1, ps=1, ataque=1, defensa=1, at_especial=1, def_especial=1, velocidad=1, tipos=set(), movimientos=set()):
        self.nombre = nombre
        self.tipos = tipos
        self.nivel = nivel
        self.ps = ps
        self.ataque = ataque
        self.defensa = defensa
        self.at_especial = at_especial
        self.def_especial = def_especial
        self.velocidad = velocidad
        self.movimientos = movimientos
    
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
        return self.at_especial

    def getDefensa(self):
        return self.defensa

    def getDefensaEspecial(self):
        return self.def_especial
    
    def getVelocidad(self):
        return self.velocidad
    
    def getMovimientos(self):
        return self.movimientos

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
    
    def setAtaqueEspecial(self, at_especial):
        self.at_especial = at_especial
    
    def setDefensa(self, defensa):
        self.defensa = defensa

    def setDefensaEspecial(self, def_especial):
        self.def_especial = def_especial

    def setVelocidad(self, velocidad):
        self.velocidad = velocidad
    
    def setMovimientos(self, movimientos):
        self.movimientos = movimientos

    def toString(self):
        value = '{ \n'
        value += '\t nombre: ' + self.nombre + '\n'
        value += '\t nivel: ' + str(self.nivel) + '\n'
        value += '\t tipos:' + str(self.tipos) + '\n'
        value += '\t ps: ' + str(self.ps) + '\n'
        value += '\t ataque: ' + str(self.ataque) + '\n'
        value += '\t defensa: ' + str(self.defensa) + '\n'
        value += '\t at_especial: ' + str(self.at_especial) + '\n'
        value += '\t def_especial: ' + str(self.def_especial) + '\n'
        value += '\t velocidad: ' + str(self.velocidad) + '\n'
        value += '\t movimientos: [ \n'
        for m in self.movimientos:
            value += m.toString() + ', \n'
        value += '] \n } \n'
        return value

