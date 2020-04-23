//
//  Coordinates.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
open class Coordinates: NSObject, Mappable {
    public var inicio: Location?
    public var fin: Location?
    
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        inicio      <- map["inicio"]
        fin         <- map["fin"]
    }
}
