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
open class RouteProfile: NSObject, Mappable, NSCoding {
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
    // MARK: NSCoding
    required public convenience init?(coder decoder: NSCoder) {
        self.init()
        
        self.latitud              = decoder.decodeObject(forKey: "latitud")       as? String
        self.longitud             = decoder.decodeObject(forKey: "longitud")      as? String
        self.z                    = decoder.decodeObject(forKey: "z")             as? String
        
        
    }
    
    public func encode(with coder: NSCoder) {
        
        coder.encode(self.latitud,              forKey: "latitud")
        coder.encode(self.longitud,             forKey: "longitud")
        coder.encode(self.z,                   forKey: "z")
    }
}
