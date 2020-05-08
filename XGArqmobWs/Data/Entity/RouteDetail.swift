//
//  RouteDetail.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//
import Foundation
import UIKit
import ObjectMapper
@objc
open class RouteDetail: NSObject, Mappable, NSCoding {
    
    @objc open var perfilJSON: Array<RouteProfile>?
    @objc open var isUrlKMLLOCAL: Bool = false
    @objc open var distancia: String?
    @objc open var servicios: String?
    @objc open var urlFicha: String?
    @objc open var puntoLlegada: String?
    @objc open var duracion: String?
    @objc open var codigo: String?
    @objc open var circular: String?
    @objc open var urlKml: String?
    @objc open var mideItinerario: String?
    @objc open var coordenadas: Coordinates?
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
    @objc open var accesoBicicleta: String?
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
        mideEsfuerzo        <- map["mideEsforzo"]
        accesoBicicleta     <- map["accesoBicicleta"]
        nivelMar            <- map["nivelMar"]
        descripcion         <- map["descricion"]
        interes             <- map["interes"]
        mideMedio           <- map["mideMedio"]
    }
    
    // MARK: NSCoding
    required public convenience init?(coder decoder: NSCoder) {
        self.init()
        self.perfilJSON             = decoder.decodeObject(forKey: "perfilJSON")            as? Array<RouteProfile>
        self.isUrlKMLLOCAL          = decoder.decodeBool(forKey: "isUrlKMLLOCAL")           
        self.distancia              = decoder.decodeObject(forKey: "distancia")             as? String
        self.servicios              = decoder.decodeObject(forKey: "servicios")             as? String
        self.urlFicha               = decoder.decodeObject(forKey: "urlFicha")              as? String
        self.puntoLlegada           = decoder.decodeObject(forKey: "puntoLlegada")          as? String
        self.duracion               = decoder.decodeObject(forKey: "duracion")              as? String
        self.codigo                 = decoder.decodeObject(forKey: "codigo")                as? String
        self.circular               = decoder.decodeObject(forKey: "circular")              as? String
        self.urlKml                 = decoder.decodeObject(forKey: "urlKml")                as? String
        self.mideItinerario         = decoder.decodeObject(forKey: "mideItinerario")        as? String
        self.coordenadas            = decoder.decodeObject(forKey: "coordenadas")           as? Coordinates
        self.perfilElevacion        = decoder.decodeObject(forKey: "perfilElevacion")       as? String
        self.desnivel               = decoder.decodeObject(forKey: "desnivel")              as? Unevenness
        self.fotos                  = decoder.decodeObject(forKey: "fotos")                 as? Array<Photo>
        self.distanciaInfo          = decoder.decodeObject(forKey: "distanciaInfo")         as? String
        self.puntoPartida           = decoder.decodeObject(forKey: "puntoPartida")          as? String
        self.recorrido              = decoder.decodeObject(forKey: "recorrido")             as? String
        self.mideDesplazamiento     = decoder.decodeObject(forKey: "mideDesplazamiento")    as? String
        self.accesos                = decoder.decodeObject(forKey: "accesos")               as? String
        self.nid                    = decoder.decodeObject(forKey: "nid")                   as? String
        self.accesoCaballo          = decoder.decodeObject(forKey: "accesoCaballo")         as? String
        self.dificultad             = decoder.decodeObject(forKey: "dificultad")            as? String
        self.material               = decoder.decodeObject(forKey: "material")              as? String
        self.masInfo                = decoder.decodeObject(forKey: "masInfo")               as? String
        self.titulo                 = decoder.decodeObject(forKey: "titulo")                as? String
        self.conexiones             = decoder.decodeObject(forKey: "conexiones")            as? String
        self.mideEsfuerzo           = decoder.decodeObject(forKey: "mideEsfuerzo")          as? String
        self.accesoBicicleta        = decoder.decodeObject(forKey: "accesoBicicleta")       as? String
        self.nivelMar               = decoder.decodeObject(forKey: "nivelMar")              as? Unevenness
        self.descripcion            = decoder.decodeObject(forKey: "descripcion")           as? String
        self.interes                = decoder.decodeObject(forKey: "interes")               as? String
        self.mideMedio              = decoder.decodeObject(forKey: "mideMedio")             as? String
    }
    
    public func encode(with coder: NSCoder) {
        // coder.encode(self.perfilJSON,          forKey: "perfilJSON")
        coder.encode(self.isUrlKMLLOCAL,       forKey: "isUrlKMLLOCAL")
        coder.encode(self.distancia,           forKey: "distancia")
        coder.encode(self.servicios,           forKey: "servicios")
        coder.encode(self.urlFicha,            forKey: "urlFicha")
        coder.encode(self.puntoLlegada,        forKey: "puntoLlegada")
        coder.encode(self.duracion,            forKey: "duracion")
        coder.encode(self.codigo,              forKey: "codigo")
        coder.encode(self.circular,            forKey: "circular")
        coder.encode(self.urlKml,              forKey: "urlKml")
        coder.encode(self.mideItinerario,      forKey: "mideItinerario")
        coder.encode(self.coordenadas,         forKey: "coordenadas")
        coder.encode(self.perfilElevacion,     forKey: "perfilElevacion")
        coder.encode(self.desnivel,            forKey: "desnivel")
        coder.encode(self.fotos,               forKey: "fotos")
        coder.encode(self.distanciaInfo,       forKey: "distanciaInfo")
        coder.encode(self.puntoPartida,        forKey: "puntoPartida")
        coder.encode(self.recorrido,           forKey: "recorrido")
        coder.encode(self.mideDesplazamiento,  forKey: "mideDesplazamiento")
        coder.encode(self.accesos,             forKey: "accesos")
        coder.encode(self.nid,                 forKey: "nid")
        coder.encode(self.accesoCaballo,       forKey: "accesoCaballo")
        coder.encode(self.dificultad,          forKey: "dificultad")
        coder.encode(self.material,            forKey: "material")
        coder.encode(self.masInfo,             forKey: "masInfo")
        coder.encode(self.titulo,              forKey: "titulo")
        coder.encode(self.conexiones,          forKey: "conexiones")
        coder.encode(self.mideEsfuerzo,        forKey: "mideEsfuerzo")
        coder.encode(self.accesoBicicleta,     forKey: "accesoBicicleta")
        coder.encode(self.nivelMar,            forKey: "nivelMar")
        coder.encode(self.descripcion,         forKey: "descripcion")
        coder.encode(self.interes,             forKey: "interes")
        coder.encode(self.mideMedio,           forKey: "mideMedio")
    }
    
}
