//
//  Place.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import Foundation
import UIKit
import ObjectMapper
@objc
open class Place: NSObject, Mappable {
    public var id: Int64?
    public var uid: Int64?
    @objc open var nombre: String?
    @objc open var distancia: Double = 0
    @objc open var descripcion: String?
    @objc open var webTurgalicia: String?
    @objc open var calle: String?
    @objc open var lugar: String?
    @objc open var parroquia: String?
    @objc open var municipio: String?
    @objc open var provincia: String?
    @objc open var telefono: String?
    @objc open var fax: String?
    @objc open var email: String?
    @objc open var web: String?
    @objc open var geodestino: String?
    @objc open var subgeodestino: String?
    @objc open var codigoPostal: String?
    @objc open var calidad: String?
    @objc open var numero: String?
    @objc open var latitud: Double = 0
    @objc open var longitud: Double = 0
    @objc open var imagenes: Array<Photo>?
    @objc open var tipo: Type?
    @objc open var categoria: Family?
    
    
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
