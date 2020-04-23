//
//  RouteProfile.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
open class RouteProfile: NSObject, Mappable {
    var latitud: String?
    var longitud: String?
    var z: String?
    
    public required convenience init?(map: Map) {
           self.init()
       }
       
     public  func mapping(map: Map) {
        
        latitud     <- map["lat"]
        longitud    <- map["lon"]
        z           <- map["z"]
    }

}
