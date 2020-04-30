//
//  Unevenness.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import Foundation
import UIKit
import ObjectMapper
@objc
open class Unevenness: NSObject {
    @objc open var subida: String?
    @objc open var bajada: String?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        subida      <- map["subida"]
        bajada      <- map["bajada"]
    }
}
