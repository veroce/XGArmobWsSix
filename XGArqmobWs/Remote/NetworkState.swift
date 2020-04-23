//
//  NetworkState.swift
//  ArqmobWs
//
//  Created by Vero on 21/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import Alamofire

class NetworkState {
    class func isConnected() ->Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
}
