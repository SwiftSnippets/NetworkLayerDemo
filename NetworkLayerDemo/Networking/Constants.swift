//
//  Constants.swift
//  NetworkLayerDemo
//
//  Created by Abdulsalam Mansour on 1/5/20.
//  Copyright © 2020 abdulsalam. All rights reserved.
//

import Foundation

struct Constants {
    
    //The API's base URL
    static let baseUrl = "https://jsonplaceholder.typicode.com"
    
    //The parameters (Queries) that we're gonna use
    struct Parameters {
        static let userId = "userId"
    }
    
    //The header fields
    enum HttpHeaderField: String {
        case authentication = "Authorization"
        case contentType = "Content-Type"
        case acceptType = "Accept"
        case acceptEncoding = "Accept-Encoding"
    }
    
    //The content type (JSON)
    enum ContentType: String {
        case json = "application/json"
    }
    
    enum ApiError: Error {
        case forbidden              //Status code 403
        case notFound               //Status code 404
        case conflict               //Status code 409
        case internalServerError    //Status code 500
    }
}
