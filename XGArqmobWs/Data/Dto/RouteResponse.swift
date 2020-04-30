//
//  RouteResponse.swift
//  ArqmobWs
//
//  Created by Vero on 20/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
@objc
open class RouteResponse: NSObject, Mappable {
    public var items: Array<Route>?
    
    required convenience public init?(map: Map) {
           self.init()
       }
       
    public func mapping(map: Map) {
        items      <- map["roteiros"]
        
    }
}
