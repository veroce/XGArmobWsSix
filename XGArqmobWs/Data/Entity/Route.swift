//
//  Route.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
open class Route: NSObject, Mappable {
    
    public var distancia: String?
    public var codigo: String?
    public var urlKml: String?
    public var titulo: String?
    public var longitud: String?
    public var latitud: String?
    public var nid: String?
    public var numImagenes: Int?
    public var thumbnail: String?
    public var dificultad: String?
    public var duracion: String?
    
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        nid             <- map["nid"]
        codigo          <- map["codigo"]
        titulo          <- map["titulo"]
        dificultad      <- map["dificultad"]
        distancia        <- map["lonxitude"]
        duracion        <- map["duracion"]
        latitud         <- map["lat"]
        longitud        <- map["lon"]
        numImagenes     <- map["numImaxes"]
        urlKml          <- map["urlKml"]
        thumbnail       <- map["thumb"]
    }
    
}
