//
//  BaseRemote.swift
//  ArqmobWs
//
//  Created by Vero on 16/04/2020.
//  Copyright © 2020 Soluciones y Proyecto de Información. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

public enum ConstantsStatus:Int {
    case ok
    case fail
    case notFound
    case notConnection
    case unauthorized
}
enum ResponseError: String {
    case INTERNAL_ERROR = "INTERNAL_ERROR"
    case BAD_REQUEST = "BAD_REQUEST"
    case FORBIDDEN = "FORBIDDEN"
    case UNAUTHORIZED = "UNAUTHORIZED"
}

class BaseRemote <T: Mappable> {
    func getHeaders() -> HTTPHeaders{
        var headers = HTTPHeaders()
        headers[ConstantsUrl.SENDEGAL_HEADER_API_KEY] = ConstantsUrl.SENDEGAL_HEADER_API_VALUE
        return headers
    }
    
   func getObject(url: String, headers:HTTPHeaders? = nil, parameters:Dictionary<String,String>? = nil, completionClosure: @escaping (_ responses: T?, _ codeStatus:ConstantsStatus)-> ())  {
        var finalUrl = url
        if(parameters != nil){
            //create url with parameters
            finalUrl = concatParameters(url: url, parameters: parameters!)
        }
        Alamofire.request(finalUrl, method: .get, headers: headers).validate().responseObject { (response: DataResponse<T>) in
            var status: ConstantsStatus = ConstantsStatus.fail
            var result:T? = nil
            switch response.result {
            case .success(let json):
                result = json
                if(result != nil){
                    print("ok " + url)
                    status = self.getStatusResponse(response.response?.statusCode ?? 200)
                }
            case .failure(let error):
                print("failure " + url + " " + String(response.response?.statusCode ?? -1) + error.localizedDescription);
               if NetworkState.isConnected() {
                    status = self.getStatusResponse(response.response?.statusCode ?? 500)
                }else{
                    status = .notConnection
                }
            }
            completionClosure(result,status)
        }
        
    }
    
    func getArrayObjects(url: String, headers:HTTPHeaders? = nil, parameters:Dictionary<String,String>? = nil, completionClosure: @escaping (_ responses: Array<T>?, _ codeStatus:ConstantsStatus)-> ())  {
        var finalUrl = url
        if(parameters != nil){
            //create url with parameters
            finalUrl = concatParameters(url: url, parameters: parameters!)
        }
        Alamofire.request(finalUrl, method: .get, headers: headers).validate().responseArray { (response: DataResponse<[T]>) in
            var status: ConstantsStatus = ConstantsStatus.fail
            var result:[T]? = nil
            switch response.result {
            case .success(let json):
                result = json
                if(result != nil){
                    print("ok " + url)
                       status = self.getStatusResponse(response.response?.statusCode ?? 200)
                }
            case .failure(let error):
                print("failure " + url + " " + String(response.response?.statusCode ?? -1) + error.localizedDescription);
                if NetworkState.isConnected() {
                    status = self.getStatusResponse(response.response?.statusCode ?? 500)
                }else{
                    status = .notConnection
                }
            }
            completionClosure(result,status)
        }
        
    }
    func sendObjectToServer(url:String, method:String = HTTPMethod.post.rawValue, headers:HTTPHeaders? = nil, parameters:Dictionary<String,String> , completionClosure: @escaping (_ responses: T?, _ codeStatus:ConstantsStatus)-> ()) {
        var finalUrl = url
        finalUrl = concatParameters(url: url, parameters: parameters)
        Alamofire.request(finalUrl, method: HTTPMethod(rawValue: method)!, parameters: parameters, encoding: JSONEncoding.default , headers: headers).responseObject { (response: DataResponse<T>) in
            var status:ConstantsStatus = ConstantsStatus.fail;
            var result:T? = nil
            switch response.result {
            case .success(let json):
                result = json
                if(result != nil){
                    print("ok " + finalUrl)
                    status = self.getStatusResponse(response.response?.statusCode ?? 200)
                }
            case .failure(let error):
                print("failure " + finalUrl + " error:" + error.localizedDescription + "STATUS CODE:", response.response?.statusCode ?? "No Status Code");
               if NetworkState.isConnected() {
                    status = self.getStatusResponse(response.response?.statusCode ?? 500)
                }else{
                    status = .notConnection
                }
            }
            completionClosure(result,status)
        }
        
    }
    
    func sendObjectToServer<R: Mappable>(url:String, method:String = HTTPMethod.post.rawValue, object: R , headers:HTTPHeaders? = nil, parameters:Dictionary<String,String>? = nil, completionClosure: @escaping (_ responses: T?, _ codeStatus:ConstantsStatus)-> ()) {
        var finalUrl = url
        if(parameters != nil){
            //create url with parameters
            finalUrl = concatParameters(url: url, parameters: parameters!)
        }
        Alamofire.request(finalUrl, method: HTTPMethod(rawValue: method)!, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseObject { (response: DataResponse<T>) in
            var status:ConstantsStatus = ConstantsStatus.fail;
            var result:T? = nil
            switch response.result {
            case .success(let json):
                result = json
                if(result != nil){
                    print("ok " + finalUrl)
                    status = self.getStatusResponse(response.response?.statusCode ?? 200)
                }
            case .failure(let error):
                print("failure " + finalUrl + " error:" + error.localizedDescription + "STATUS CODE:", response.response?.statusCode ?? "No Status Code");
                if NetworkState.isConnected() {
                    status = self.getStatusResponse(response.response?.statusCode ?? 500)
                }else{
                    status = .notConnection
                }
            }
            completionClosure(result,status)
        }
        
    }
    
    private func concatParameters(url:String ,parameters:Dictionary<String,String> ) -> String{
        var urlFinal:String = url + "?"
        var firstParameter = false
        for (key, value) in parameters {
            urlFinal = urlFinal + (firstParameter ? "&": "") + key + "=" + value.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
            firstParameter = true
        }
        return urlFinal;
    }
    private func getStatusResponse(_ statusCode: Int) -> ConstantsStatus{
        switch statusCode {
        case 200:
            return .ok
        case 204:
            return .ok
        case 400:
            return .fail
        case 404:
            return .notFound
        case 405:
            return .fail
        case 401:
            return .unauthorized
        case 403:
            return .unauthorized
        case 500:
            return .fail
        default:
            return .fail
        }
    }
}
