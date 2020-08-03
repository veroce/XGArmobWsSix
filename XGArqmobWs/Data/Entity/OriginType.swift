//
//  OriginType.swift
//  XGArqmobWs
//
//  Created by David García Pérez on 31/07/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import Foundation
import UIKit
import ObjectMapper
@objc
open class OriginType: NSObject, Mappable {
    
    @objc open var titulo: String?
    @objc open var id: Int = 0

    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        titulo          <- map["titulo"]
        id              <- map["id"]
    }
    
}
