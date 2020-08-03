//
//  ArqmobService.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import UIKit
@objc(ArqmobService)
open class ArqmobService: NSObject {
    
    public static let shared = ArqmobService()
    
    @objc class func sharedInstance() -> ArqmobService {
       return ArqmobService.shared
     }
    /**
     Permite obtener un listado de todos los recursos que se encuentran dentro de un radio de la localización indicada.
     
     - Parameters:
     - location: Objecto Location con las coordenadas en las que buscar los recursos
     - language: Idioma en el que se devuelven los resultados. Si no se especifica por defecto se devuelven en 'es'
     - radio: Radio que comprende la búsqueda de los recursos
     - numResults: Número de resultados
     
     - Returns: Listado de los recursos y el estado de la petición.
     */
    @nonobjc open func getPlaces(location: Location? = nil, language: String = "es", radio: String? = nil, numResults: String? = nil,filterTypes: Array<Int64>? = nil, completionClosure: @escaping (_ responses: Array<Place>?, _ codeStatus:ConstantsStatus)-> ())  {
        var params = "es/"
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
        if let filter = filterTypes {
            let stringArray = filter.map { String($0) }
            let paramsType = stringArray.joined(separator: ",")
            params = params + "/\(paramsType)"
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
    /**
     Permite obtener un listado con los direntes tipos de los recursos
     
     - Parameters:
     - language: Idioma en el que se devuelven los resultados. Si no se especifica por defecto se devuelven en 'es'
     
     
     - Returns: Listado de los diferentes tipos de los recursos y el estado de la petición.
     */
    @nonobjc open func getTypePlaces(language: String = "es", completionClosure: @escaping (_ responses: Array<Type>?, _ codeStatus:ConstantsStatus)-> ())  {
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_TURISMO_URL + ConstantsUrl.TURISMO_GET_TIPOS + language
        let remote = BaseRemote<Type>()
        remote.getArrayObjects(url: url) { (items, status) in
            completionClosure(items, status)
        }
        
    }
    /**
     Permite obtener toda la informaicón de una ruta
     
     - Parameters:
     - language: Idioma en el que se devuelven los resultados. Si no se especifica por defecto se devuelven en 'es'
     - nid: Nid de la ruta'
     
     
     - Returns: Detalle de la ruta indicada y estado de la petición
     */
    @nonobjc  open func getRouteDetail(language: String = "es", nid: String, completionClosure: @escaping (_ responses: RouteDetail?, _ codeStatus:ConstantsStatus)-> ())  {
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_SENDEGAL_URL + ConstantsUrl.SENDEGAL_GET_RUTA_FICHA + nid + "/" + language
        
        let remote = BaseRemote<RouteDetail>()
        remote.getObject(url: url,headers: remote.getHeaders()) { (route, status) in
            completionClosure(route, status)
        }
        
        
    }
    @objc open func getRouteDetail(language: String = "es", nid: String, completionClosure: @escaping (_ responses: RouteDetail?, _ codeStatus:Int)-> ())  {
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_SENDEGAL_URL + ConstantsUrl.SENDEGAL_GET_RUTA_FICHA + nid + "/" + language
        
        let remote = BaseRemote<RouteDetail>()
        remote.getObject(url: url,headers: remote.getHeaders()) { (route, status) in
            completionClosure(route, status.rawValue)
        }
        
    }
    /**
     Permite obtener el perfil de una ruta
     
     - Parameters:
        - nid: Nid de la ruta'
     - Returns: Listado del perfil de la ruta  y estado de la petición
     */
    @nonobjc open func getRouteProfile(nid: String, completionClosure: @escaping (_ responses: Array<RouteProfile>?, _ codeStatus:ConstantsStatus)-> ())  {
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_SENDEGAL_URL + ConstantsUrl.SENDEGAL_GET_RUTA_PERFIL + nid
        let remote = BaseRemote<RouteProfile>()
        remote.getArrayObjects(url: url, headers: remote.getHeaders()) { (items, status) in
            completionClosure(items, status)
        }
        
    }
    /**
     Permite obtener el perfil de una ruta
     
     - Parameters:
        - nid: Nid de la ruta'
     
     
     - Returns: Listado del perfil de la ruta  y estado de la petición
     */
    @objc open func getRouteProfile(nid: String, completionClosure: @escaping (_ responses: Array<RouteProfile>?, _ codeStatus:Int)-> ())  {
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_SENDEGAL_URL + ConstantsUrl.SENDEGAL_GET_RUTA_PERFIL + nid
        let remote = BaseRemote<RouteProfile>()
        remote.getArrayObjects(url: url, headers: remote.getHeaders()) { (items, status) in
            completionClosure(items, status.rawValue)
        }
        
    }
    /**
       Permite obtener un listado con todas las rutas
       
       - Parameters:
          - language: Idioma en el que se devuelven los resultados. Si no se especifica por defecto se devuelven en 'es'
       
       
       - Returns: Array con las rutas  y estado de la petición
       */
    
    @objc open func getRoutes(language: String = "es", completionClosure: @escaping (_ responses: Array<Route>?, _ codeStatus:Int)-> ())  {
        
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_SENDEGAL_URL + ConstantsUrl.SENDEGAL_GET_RUTAS + language
        let remote = BaseRemote<RouteResponse>()
        
        remote.getObject(url: url, headers: remote.getHeaders()) { (response, status) in
            
            completionClosure(response?.items, status.rawValue)
            
        }
    }
    /**
       Permite obtener un listado con todas las rutas
       
       - Parameters:
          - language: Idioma en el que se devuelven los resultados. Si no se especifica por defecto se devuelven en 'es'
       
       
       - Returns: Array con las rutas  y estado de la petición
       */
    @nonobjc open func getRoutes(language: String = "es", completionClosure: @escaping (_ responses: Array<Route>?, _ codeStatus:ConstantsStatus)-> ())  {
        
        let url = ConstantsUrl.SERVER_URL + ConstantsUrl.API_SENDEGAL_URL + ConstantsUrl.SENDEGAL_GET_RUTAS + language
        let remote = BaseRemote<RouteResponse>()
        
        remote.getObject(url: url, headers: remote.getHeaders()) { (response, status) in
            
            completionClosure(response?.items, status)
            
        }
    }
    
    /**
     Permite obtener las denominaciones de origen
     
     - Parameters:
        - language: Idioma en el que se devuelven los resultados. Si no se especifica por defecto se devuelven en 'es'
     
     
     - Returns: Array con las denominaciones de origen
     */
    @nonobjc open func getOriginWith(denominacion: String, language: String = "es", completionClosure: @escaping (_ responses: Array<Origin>?, _ codeStatus:ConstantsStatus)-> ())  {
        let url = "http://dev.sixtema.es/mocks/enoturismo/\(denominacion)/data.json"
        let remote = BaseRemote<Origin>()
        remote.getArrayObjects(url: url, headers: remote.getHeaders()) { (items, status) in
            completionClosure(items, status)
        }
        
    }
    /**
     Permite obtener las denominaciones de origen
     
     - Parameters:
        - language: Idioma en el que se devuelven los resultados. Si no se especifica por defecto se devuelven en 'es'
     
     
     - Returns: Array con las denominaciones de origen
     */
    @objc open func getOriginWith(denominacion: String, language: String = "es", completionClosure: @escaping (_ responses: Array<Origin>?, _ codeStatus:Int)-> ())  {
        let url = "http://dev.sixtema.es/mocks/enoturismo/\(denominacion)/data.json"
        let remote = BaseRemote<Origin>()
        remote.getArrayObjects(url: url, headers: remote.getHeaders()) { (items, status) in
            completionClosure(items, status.rawValue)
        }
        
    }
}
