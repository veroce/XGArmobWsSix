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
    
    var distancia: String?
    var servicios: String?
    var urlFicha: String?
    var puntoLlegada: String?
    var duracion: String?
    var codigo: String?
    var circular: String?
    var urlKml: String?
    var mideItinerario: String?
    var coordenadas: Coordinates?
    var perfilElevacion: String?
    var desnivel: Unevenness?
    var fotos: Array<Photo>?
    var distanciaInfo: String?
    var puntoPartida: String?
    var recorrido: String?
    var mideDesplazamiento: String?
    var accesos: String?
    var nid: String?
    var accesoCaballo: String?
    var dificultad: String?
    var material: String?
    var masInfo: String?
    var titulo: String?
    var conexiones: String?
    var mideEsfuerzo: String?
    var mideMedio: String?
    var acccesoBicicleta: String?
    var nivelMar: Unevenness?
    var descripcion: String?
    var interes: String?
    
    
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
