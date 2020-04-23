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
    public var id: Int64?
    public var uid: Int64?
    public var nombre: String?
    public var distancia: Double?
    public var descripcion: String?
    public var webTurgalicia: String?
    public var calle: String?
    public var lugar: String?
    public var parroquia: String?
    public var municipio: String?
    public var provincia: String?
    public var telefono: String?
    public var fax: String?
    public var email: String?
    public var web: String?
    public var geodestino: String?
    public var subgeodestino: String?
    public var codigoPostal: String?
    public var calidad: String?
    public var numero: String?
    public var latitud: Double?
    public var longitud: Double?
    public var imagenes: Array<Photo>?
    public var tipo: Type?
    public var categoria: Family?
    
    
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
