//
//  RouteDetail.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import ObjectMapper
open class RouteDetail: NSObject, Mappable {
    
    public var distancia: String?
    public var servicios: String?
    public var urlFicha: String?
    public var puntoLlegada: String?
    public var duracion: String?
    public var codigo: String?
    public var circular: String?
    public var urlKml: String?
    public var mideItinerario: String?
    public var coordenadas: Coordinates?
    public var perfilElevacion: String?
    public var desnivel: Unevenness?
    public var fotos: Array<Photo>?
    public var distanciaInfo: String?
    public var puntoPartida: String?
    public var recorrido: String?
    public var mideDesplazamiento: String?
    public var accesos: String?
    public var nid: String?
    public var accesoCaballo: String?
    public var dificultad: String?
    public var material: String?
    public var masInfo: String?
    public var titulo: String?
    public var conexiones: String?
    public var mideEsfuerzo: String?
    public var mideMedio: String?
    public var acccesoBicicleta: String?
    public var nivelMar: Unevenness?
    public var descripcion: String?
    public var interes: String?
    
    
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
