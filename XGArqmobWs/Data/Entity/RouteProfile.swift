//
//  RouteProfile.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import Foundation
import UIKit
import ObjectMapper
@objc
open class RouteProfile: NSObject, Mappable {
    @objc open var latitud: String?
    @objc open var longitud: String?
    @objc open var z: String?
    
    public required convenience init?(map: Map) {
           self.init()
       }
       
     public  func mapping(map: Map) {
        
        latitud     <- map["lat"]
        longitud    <- map["lon"]
        z           <- map["z"]
    }

}
