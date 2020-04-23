//
//  RouteResponse.swift
//  ArqmobWs
//
//  Created by Vero on 20/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
class RouteResponse: NSObject, Mappable {
    var items: Array<Route>?
    
    required convenience init?(map: Map) {
           self.init()
       }
       
    func mapping(map: Map) {
        items      <- map["roteiros"]
        
    }
}
