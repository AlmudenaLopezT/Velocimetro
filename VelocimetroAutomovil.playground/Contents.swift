/*
 Simulación velocímetro automóvil
 author Almudena
*/
import UIKit

//Creación enumeración Velocidades

enum Velocidades:Int {
    case Apagado=0
    case VelocidadBaja=20
    case VelocidadMedia=50
    case VelocidadAlta=120
    
    //Método inicializa enumeración
    init(velocidadInicial:Velocidades) {
        self=velocidadInicial
    }
}

//Creación clase Auto

class Auto{
    
    //Instancia a enumeración Velocidades
    var velocidad:Velocidades
    
    //Método inicializa clase
    init() {
        self.velocidad=Velocidades(rawValue: 0)!
    }
    
    //Función que cambia la velocidad
    
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
        var cambios:(actual: Int,velocidadEnCadena: String)
        var cont=0
        switch self.velocidad {
        case .Apagado:
            cambios.actual=self.velocidad.rawValue
            cambios.velocidadEnCadena=String(describing: self.velocidad)
            cont=20
        case .VelocidadBaja:
            cambios.actual=self.velocidad.rawValue
            cambios.velocidadEnCadena=String(describing: self.velocidad)
            cont=50
        case .VelocidadMedia:
            cambios.actual=self.velocidad.rawValue
            cambios.velocidadEnCadena=String(describing: self.velocidad)
            cont=120
        case .VelocidadAlta:
            cambios.actual=self.velocidad.rawValue
            cambios.velocidadEnCadena=String(describing: self.velocidad)
            cont=50
        default:
            print("Ha ocurrido un error")
        }
        self.velocidad=Velocidades(rawValue: cont)!
        return cambios
    
    }
    
}

//Instancia de la clase Auto
var auto = Auto()

//For de comprobación
for i in 0...19{
    print(auto.cambioDeVelocidad())
}
