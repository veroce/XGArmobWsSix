//
//  Place.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
open class Place: NSObject, Mappable {
    var id: Int64?
    var uid: Int64?
    var nombre: String?
    var distancia: Double?
    var descripcion: String?
    var webTurgalicia: String?
    var calle: String?
    var lugar: String?
    var parroquia: String?
    var municipio: String?
    var provincia: String?
    var telefono: String?
    var fax: String?
    var email: String?
    var web: String?
    var geodestino: String?
    var subgeodestino: String?
    var codigoPostal: String?
    var calidad: String?
    var numero: String?
    var latitud: Double?
    var longitud: Double?
    var imagenes: Array<Photo>?
    var tipo: Type?
    var categoria: Family?
    
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        id              <- map["id"]
        uid             <- map["uid"]
        nombre          <- map["nombre"]
        distancia       <- map["distancia"]
        descripcion     <- map["descripcion"]
        webTurgalicia   <- map["webTurgalicia"]
        calle           <- map["calle"]
        lugar           <- map["lugar"]
        parroquia       <- map["parroquia"]
        municipio       <- map["municipio"]
        provincia       <- map["provincia"]
        telefono        <- map["telefono"]
        fax             <- map["fax"]
        email           <- map["email"]
        web             <- map["web"]
        geodestino      <- map["geodestino"]
        subgeodestino   <- map["subgeodestino"]
        codigoPostal    <- map["codigoPostal"]
        calidad         <- map["calidad"]
        numero          <- map["numero"]
        latitud         <- map["latitud"]
        longitud        <- map["longitud"]
        tipo            <- map["tipo"]
        categoria       <- map["categoria"]
        imagenes        <- map["images"]
    }
}
