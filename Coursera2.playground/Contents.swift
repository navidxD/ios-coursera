import UIKit

var str = "Hello, playground"

enum Velocidades:Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad:Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String) {
        var res : ( actual : Int, velocidadEnCadena: String);
        switch velocidad.rawValue {
        case Velocidades.Apagado.rawValue:
            res = (velocidad.rawValue,"auto apagado")
            velocidad = Velocidades.VelocidadBaja
            break;
        case Velocidades.VelocidadBaja.rawValue:
            res = (velocidad.rawValue,"auto Velocidad Baja")
            velocidad = Velocidades.VelocidadMedia
            break;
        case Velocidades.VelocidadMedia.rawValue:
            res = (velocidad.rawValue,"auto Velocidad Media")
            velocidad = Velocidades.VelocidadAlta
            break;
        case Velocidades.VelocidadAlta.rawValue:
            res = (velocidad.rawValue,"auto Velocidad Alta")
            velocidad = Velocidades.VelocidadMedia
            break;
        default:
            res = (velocidad.rawValue,"velocidad se sale del rango")
        }
        return res;
    }
}


var auto:Auto = Auto()
var info: ( actual : Int, velocidadEnCadena: String);
for _ in 1...20 {
    info = auto.cambioDeVelocidad()
    print(info.actual , " ", info.velocidadEnCadena)
}
