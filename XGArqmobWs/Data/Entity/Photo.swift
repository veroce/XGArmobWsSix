//
//  Photo.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
open class Photo: NSObject {
    var thumbnail: String?
    var foto: String?
    
   public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        thumbnail       <- map["urlThumb"]
        foto            <- map["urlFoto"]
    }
    
}
