//
//  Origin.swift
//  XGArqmobWs
//
//  Created by David García Pérez on 30/07/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import Foundation
import UIKit
import ObjectMapper
@objc
open class Origin: NSObject, Mappable {
    
    @objc open var uid: String?
    @objc open var nombre: String?
    @objc open var descripcion: String?
    @objc open var calle: String?
    @objc open var municipio: String?
    @objc open var latitud: Double = 0
    @objc open var longitud: Double = 0
    @objc open var telefono: String?
    @objc open var email: String?
    @objc open var web: String?
    @objc open var demarcacion: String?
    @objc open var servicios: String?
    @objc open var tipo: OriginType?
    @objc open var imagenes: [OriginImages]?
    @objc open var fax: String?
    @objc open var coordinates: String?
    @objc open var city: Int = 0
    @objc open var calendario: String?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        uid                     <- map["uid"]
        nombre                  <- map["nombre"]
        descripcion             <- map["descripcion"]
        calle                   <- map["calle"]
        municipio               <- map["municipio"]
        telefono                <- map["telefono"]
        email                   <- map["email"]
        web                     <- map["web"]
        demarcacion             <- map["demarcacion"]
        servicios               <- map["servicios"]
        tipo                    <- map["tipo"]
        imagenes                <- map["imagenes"]
        fax                     <- map["fax"]
        coordinates             <- map["coordinates"]
        city                    <- map["city"]
        calendario              <- map["calendario"]
        var latitude: String?
        var  longitude: String?
        latitude <- map["latitud"]
        longitude <- map["longitud"]
        if let latitude = latitude {
            self.latitud = Double(latitude) ?? 0
        }
        if let longitude = longitude {
            self.longitud = Double(longitude) ?? 0
        }
    }
    
}
