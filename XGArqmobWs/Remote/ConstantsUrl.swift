//
//  ConstantsUrl.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit

class ConstantsUrl: NSObject {
    static let SERVER_URL = "http://www.turgalicia.gal/wsra/"
    static let API_TURISMO_URL = "recursos/"
    static let API_SENDEGAL_URL = "sendegal/"
    
    static let TURISMO_GET_TIPOS = "getTipos/"
    static let TURISMO_GET_CATEGORIAS = "getCategorias/"
    static let TURISMO_GET_RECURSOS_BY_TIPO = "getRecursosByTipos/"

    static let SENDEGAL_GET_RUTAS = "roteiros/listado/"
    static let SENDEGAL_GET_RUTA_FICHA = "roteiros/ficha/"
    static let SENDEGAL_GET_RUTA_PERFIL = "roteiros/perfil/"
    
    static let SENDEGAL_HEADER_API_KEY = "x-api-key"
    static let SENDEGAL_HEADER_API_VALUE = "8mCceQJB46eD183y2IF41gK2pjM5E53a7ADxtaUafki21oVZ29l9FzEb21Ow07r4S09nhb"
    
    static let LOGIN_URL = "oauth/token"

}
