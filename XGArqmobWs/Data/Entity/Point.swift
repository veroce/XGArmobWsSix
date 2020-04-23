//
//  Point.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
open class Location: NSObject, Mappable {
    
   open var latitud: String?
   open var longitud: String?
    
   public required convenience init?(map: Map) {
        self.init()
    }
    
   public func mapping(map: Map) {
        latitud     <- map["lonx"]
        longitud    <- map["lat"]
    }
}
