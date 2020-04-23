//
//  Family.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
open class Family: NSObject, Mappable {

    public var id: Int64?
    public var titulo: String?
    
    
    public required convenience init?(map: Map) {
           self.init()
       }
       
    public func mapping(map: Map) {
        
    }
    
    
    
}
