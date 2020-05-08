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
@objc(Photo)
open class Photo: NSObject, Mappable, NSCoding {
    @objc open var thumbnail: String?
    @objc open var foto: String?
    
   public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        thumbnail       <- map["urlThumb"]
        foto            <- map["urlFoto"]
    }
    // MARK: NSCoding
    required public convenience init?(coder decoder: NSCoder) {
        self.init()
        
        self.thumbnail              = decoder.decodeObject(forKey: "thumbnail")             as? String
        self.foto                 = decoder.decodeObject(forKey: "foto")             as? String
        
    }
    
    public func encode(with coder: NSCoder) {
        
        coder.encode(self.thumbnail,     forKey: "thumbnail")
        coder.encode(self.foto,           forKey: "foto")
    }
    
}
