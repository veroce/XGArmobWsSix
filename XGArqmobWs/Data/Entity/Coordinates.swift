//
//  Coordinates.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import Foundation
import UIKit
import ObjectMapper
@objc
open class Coordinates: NSObject, Mappable, NSCoding {
    @objc open var inicio: Location?
    @objc open var fin: Location?
    
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        inicio      <- map["inicio"]
        fin         <- map["fin"]
    }
    
    // MARK: NSCoding
    required public convenience init?(coder decoder: NSCoder) {
        self.init()
        
        self.inicio              = decoder.decodeObject(forKey: "fin")             as? Location
        self.fin                 = decoder.decodeObject(forKey: "fin")             as? Location
        
    }
    
    public func encode(with coder: NSCoder) {
        
        coder.encode(self.inicio,     forKey: "inicio")
        coder.encode(self.fin,           forKey: "fin")
    }
}
