//
//  Point.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import Foundation
import UIKit
import ObjectMapper
@objc
open class Location: NSObject, Mappable,NSCoding {
    
    @objc open  var latitud: String?
    @objc open  var longitud: String?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        latitud     <- map["lat"]
        longitud    <- map["lonx"]
    }
    
    // MARK: NSCoding
    required public convenience init?(coder decoder: NSCoder) {
        self.init()
        
        self.latitud              = decoder.decodeObject(forKey: "latitud")             as? String
        self.longitud              = decoder.decodeObject(forKey: "longitud")             as? String
        
    }
    
    public func encode(with coder: NSCoder) {
        
        coder.encode(self.latitud,            forKey: "latitud")
        coder.encode(self.longitud,           forKey: "longitud")
    }
}
