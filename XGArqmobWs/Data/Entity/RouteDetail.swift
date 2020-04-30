//
//  RouteDetail.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
@objc
open class RouteDetail: NSObject, Mappable {
    
    @objc open var distancia: String?
    @objc open var servicios: String?
    @objc open var urlFicha: String?
    @objc open var puntoLlegada: String?
    @objc open var duracion: String?
    @objc open var codigo: String?
    @objc open var circular: String?
    @objc open var urlKml: String?
    @objc open var mideItinerario: String?
    public var coordenadas: Coordinates?
    @objc open var perfilElevacion: String?
    @objc open var desnivel: Unevenness?
    @objc open var fotos: Array<Photo>?
    @objc open var distanciaInfo: String?
    @objc open var puntoPartida: String?
    @objc open var recorrido: String?
    @objc open var mideDesplazamiento: String?
    @objc open var accesos: String?
    @objc open var nid: String?
    @objc open var accesoCaballo: String?
    @objc open var dificultad: String?
    @objc open var material: String?
    @objc open var masInfo: String?
    @objc open var titulo: String?
    @objc open var conexiones: String?
    @objc open var mideEsfuerzo: String?
    @objc open var mideMedio: String?
    @objc open var acccesoBicicleta: String?
    @objc open var nivelMar: Unevenness?
    @objc open var descripcion: String?
    @objc open var interes: String?
    
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        distancia           <- map["lonxitud"]
        servicios           <- map["servizos"]
        urlFicha            <- map["urlFicha"]
        puntoLlegada        <- map["puntoChegada"]
        duracion            <- map["duracion"]
        codigo              <- map["codigo"]
        circular            <- map["circular"]
        urlKml              <- map["urlKml"]
        mideItinerario      <- map["mideItinerario"]
        coordenadas         <- map["coordenadas"]
        perfilElevacion     <- map["perfilElevacion"]
        desnivel            <- map["desnivel"]
        fotos               <- map["fotos"]
        distanciaInfo       <- map["lonxitudInfo"]
        puntoPartida        <- map["puntoPartida"]
        recorrido           <- map["percorrido"]
        mideDesplazamiento  <- map["mideDesplazamento"]
        accesos             <- map["accesos"]
        nid                 <- map["nid"]
        accesoCaballo       <- map["accesoCabalo"]
        dificultad          <- map["dificultade"]
        material            <- map["material"]
        masInfo             <- map["masInfo"]
        titulo              <- map["titulo"]
        conexiones          <- map[""]
        mideEsfuerzo        <- map["mideforzo"]
        acccesoBicicleta    <- map["accesoBicicleta"]
        nivelMar            <- map["nivelMar"]
        descripcion         <- map["descricion"]
        interes             <- map["interes"]
    }
    
}
