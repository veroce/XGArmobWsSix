//
//  Photo.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import Foundation
import UIKit
import ObjectMapper
@objc
open class Photo: NSObject {
    @objc open var thumbnail: String?
    @objc open var foto: String?
    
   public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        thumbnail       <- map["urlThumb"]
        foto            <- map["urlFoto"]
    }
    
}
