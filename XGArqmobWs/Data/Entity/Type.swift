//
//  Type.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
open class Type: NSObject, Mappable {
    
    open var id: Int64?
    open var titulo: String?
    open var icono: String?
    open var iconoRedondeado: String?
    open var iconoCuadrado: String?
    public  required convenience init?(map: Map) {
        self.init()
    }
    
    public  func mapping(map: Map) {
        id                  <- map["id"]
        titulo              <- map["titulo"]
        icono               <- map["icono"]
        iconoRedondeado     <- map["iconoRedondo"]
        iconoCuadrado       <- map["iconoCuadrado"]
    }
}
