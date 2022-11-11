class TarjetaPokemonDTO:

    # constructor
    def __init__(self, nombre, tipos=set(), imgUrl=""):
        self.nombre = nombre
        self.tipos = tipos
        self.imgUrl = imgUrl
    
    # getters y setters

    def getNombre(self):
        return self.nombre

    def getTipos(self):
        return self.tipos

    def getImgUrl(self):
        return self.imgUrl

    def setNombre(self, nombre):
        self.nombre = nombre
    
    def setTipos(self, tipos):
        self.tipos = tipos

    def setImgUrl(self, imgUrl):
        self.imgUrl = imgUrl

    def toString(self):
        value = '{ \n'
        value += '\t nombre: ' + self.nombre + '\n'
        value += '\t tipos:' + str(self.tipos) + '\n'
        value += '\t imagen url: ' + self.imgUrl + '\n'
        return value

    # serializa un objeto para poder enviarlo en formato JSON
    def serialize(self):
        return {
            "nombre": self.nombre,
            "tipos": list(self.tipos),
            "imgUrl":self.imgUrl
        }

