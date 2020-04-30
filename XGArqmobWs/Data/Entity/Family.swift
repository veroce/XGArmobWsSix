//
//  Family.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import Foundation
import UIKit
import ObjectMapper
@objc
open class Family: NSObject, Mappable {

    @objc open var id: Int64 = 0
    @objc open var titulo: String?
    
    
    public required convenience init?(map: Map) {
           self.init()
       }
       
    public func mapping(map: Map) {
        
    }
    
    
    
}
