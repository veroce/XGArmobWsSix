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
    
    var distancia: String?
    var codigo: String?
    var urlKml: String?
    var titulo: String?
    var longitud: String?
    var latitud: String?
    var nid: String?
    var numImagenes: Int?
    var thumbnail: String?
    var dificultad: String?
    var duracion: String?
    
    
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
