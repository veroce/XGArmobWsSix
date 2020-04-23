//
//  ArqmobService.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit

open class ArqmobService: NSObject {
    
    public static let shared = ArqmobService()
    
    open func getPlaces(location: Location? = nil, language: String = "es", radio: String? = nil, numResults: String? = nil, completionClosure: @escaping (_ responses: Array<Place>?, _ codeStatus:ConstantsStatus)-> ())  {
        var params = "/es/"
        if let point = location, let latitud = point.latitud {
            params = params + "\(latitud)/"
        }
        if let point = location, let longitud = point.longitud {
            params = params + "\(longitud)/"
        }
        if let radio = radio {
            params = params + "\(radio)/"
        }
        
        if let numResults = numResults {
            params = params + "\(numResults)"
        }
        if params.last == "/" {
            params.removeLast()
        }
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_TURISMO_URL + ConstantsUrl.TURISMO_GET_RECURSOS_BY_TIPO + params

        let remote = BaseRemote<Place>()
        remote.getArrayObjects(url: url) { (items, status) in
            completionClosure(items, status)
        }
        
    }
    open func getTypePlaces(language: String = "es", completionClosure: @escaping (_ responses: Array<Type>?, _ codeStatus:ConstantsStatus)-> ())  {
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_TURISMO_URL + ConstantsUrl.TURISMO_GET_TIPOS + language
        let remote = BaseRemote<Type>()
        remote.getArrayObjects(url: url) { (items, status) in
            completionClosure(items, status)
        }
        
    }
    open func getRouteDetail(language: String = "es", nid: String, completionClosure: @escaping (_ responses: RouteDetail?, _ codeStatus:ConstantsStatus)-> ())  {
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_SENDEGAL_URL + ConstantsUrl.SENDEGAL_GET_RUTA_FICHA + nid + "/" + language
        
        let remote = BaseRemote<RouteDetail>()
        remote.getObject(url: url,headers: remote.getHeaders()) { (route, status) in
            completionClosure(route, status)
        }
        
        
    }
    open func getRouteProfile(nid: String, completionClosure: @escaping (_ responses: Array<RouteProfile>?, _ codeStatus:ConstantsStatus)-> ())  {
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_SENDEGAL_URL + ConstantsUrl.SENDEGAL_GET_RUTA_PERFIL + nid
        let remote = BaseRemote<RouteProfile>()
        remote.getArrayObjects(url: url) { (items, status) in
            completionClosure(items, status)
        }
        
    }
    open func getRoutes(language: String = "es", completionClosure: @escaping (_ responses: Array<Route>?, _ codeStatus:ConstantsStatus)-> ())  {
        
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_SENDEGAL_URL + ConstantsUrl.SENDEGAL_GET_RUTAS + language
        let remote = BaseRemote<RouteResponse>()
     
        remote.getObject(url: url, headers: remote.getHeaders()) { (response, status) in
            
            completionClosure(response?.items, status)
            
        }
    }
    
    
}
