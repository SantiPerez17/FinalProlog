class Movimiento:

    # constructor
    def __init__(self, nombre, tipo, categoria, potencia_base):
        self.nombre = nombre
        self.tipo = tipo
        self.categoria = categoria
        self.potencia_base = potencia_base
    
    # getters y setters

    def getNombre(self):
        return self.nombre
    
    def getTipo(self):
        return self.tipo
    
    def getCategoria(self):
        return self.categoria
    
    def getPotenciaBase(self):
        return self.potencia_base
    
    def setNombre(self, nombre):
        self.nombre = nombre
    
    def setTipo(self, tipo):
        self.tipo = tipo
    
    def setCategoria(self, categoria):
        self.categoria = categoria

    def setPotenciaBase(self, potencia_base):
        self.potenciaBase = potencia_base

    def toString(self):
        value = ''
        value += '{ \n'
        value += '\t nombre: ' + self.nombre + ' \n'
        value += '\t tipo: ' + self.tipo + ' \n'
        value += '\t categoria: ' + self.categoria + ' \n'
        value += '\t potenciaBase: ' + str(self.potencia_base) + ' \n'
        value += '}'
        return value
