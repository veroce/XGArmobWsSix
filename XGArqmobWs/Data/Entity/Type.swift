//
//  Type.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import Foundation
import UIKit
import ObjectMapper
@objc
open class Type: NSObject, Mappable {
    
    @objc public var id: Int64 = 0
    @objc open var titulo: String?
    @objc open var icono: String?
    @objc open var iconoRedondeado: String?
    @objc open var iconoCuadrado: String?
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
