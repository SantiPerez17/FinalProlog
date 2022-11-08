class Movimiento:

    # constructor
    def __init__(self, nombre, tipo, categoria, potenciaBase):
        self.nombre = nombre
        self.tipo = tipo
        self.categoria = categoria
        self.potenciaBase = potenciaBase
    
    # getters y setters

    def getNombre(self):
        return self.nombre
    
    def getTipo(self):
        return self.tipo
    
    def getCategoria(self):
        return self.categoria
    
    def getPotenciaBase(self):
        return self.potenciaBase
    
    def setNombre(self, nombre):
        self.nombre = nombre
    
    def setTipo(self, tipo):
        self.tipo = tipo
    
    def setCategoria(self, categoria):
        self.categoria = categoria

    def setPotenciaBase(self, potenciaBase):
        self.potenciaBase = potenciaBase

    def toString(self):
        value = ''
        value += '{ \n'
        value += '\t nombre: ' + self.nombre + ' \n'
        value += '\t tipo: ' + self.tipo + ' \n'
        value += '\t categoria: ' + self.categoria + ' \n'
        value += '\t potenciaBase: ' + str(self.potenciaBase) + ' \n'
        value += '}'
        return value

    # serializa un objeto para poder enviarlo en formato JSON
    def serialize(self):
        return {
            "nombre": self.nombre,
            "tipo": self.tipo,
            "categoria": self.categoria,
            "potenciaBase": self.potenciaBase
        }
