//
//  OriginImages.swift
//  XGArqmobWs
//
//  Created by David García Pérez on 31/07/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import Foundation
import UIKit
import ObjectMapper
@objc
open class OriginImages: NSObject, Mappable {
    
    @objc open var url: String?

    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        url          <- map["url"]
    }
    
}
