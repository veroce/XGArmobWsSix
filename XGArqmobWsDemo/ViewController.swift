//
//  ViewController.swift
//  XGArqmobWsDemo
//
//  Created by Vero on 07/05/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
import XGArqmobWs

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        getRecursosByType(-8.545729692550367, latitude: 42.88085063626383, radio: "10000", numResults: "50", filterType: [16,15,24,18,20,1,5,22,27,17,6,13,9,7,28,14,23,8,2,11,21]) { (items, status) in
//            if let places = items, places.count > 0 {
//            }
//        }
        
        
        getOriginWith("monterrei") { (items, status) in
            items
        }
    }
    
    func getRecursosByType(_ longitude: Double, latitude: Double, radio: String, numResults: String, filterType: Array<Int64>? , completion: @escaping (_ responses: Array<Place>?, _ codeStatus:ConstantsStatus)-> ())  {
        let userLocation = Location()
        userLocation.latitud = "\(latitude)"
        userLocation.longitud = "\(longitude)"
        let lang = "es-gl"
        ArqmobService.shared.getPlaces(location: userLocation, language: lang, radio: radio, numResults: numResults, filterTypes: filterType) { (items, status) in
            completion(items, status)
        }
    }
    
    func getOriginWith(_ denominacion: String, completion: @escaping (_ responses: Array<Origin>?, _ codeStatus:ConstantsStatus)-> ())  {
        ArqmobService.shared.getOriginWith() { (items, status) in
            completion(items, status)
        }
    }
}

