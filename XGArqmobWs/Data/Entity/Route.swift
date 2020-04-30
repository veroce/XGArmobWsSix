//
//  Route.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import Foundation
import UIKit
import ObjectMapper
@objc
open class Route: NSObject, Mappable {
    
    @objc open var distancia: String?
    @objc open var codigo: String?
    @objc open var urlKml: String?
    @objc open var titulo: String?
    @objc open var longitud: String?
    @objc open var latitud: String?
    @objc open var nid: String?
    @objc open var numImagenes: Int = 0
    @objc open var thumbnail: String?
    @objc open var dificultad: String?
    @objc open var duracion: String?
    
    
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
