//
//  Unevenness.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
open class Unevenness: NSObject {
    public var subida: String?
    public var bajada: String?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        subida      <- map["subida"]
        bajada      <- map["bajada"]
    }
}
