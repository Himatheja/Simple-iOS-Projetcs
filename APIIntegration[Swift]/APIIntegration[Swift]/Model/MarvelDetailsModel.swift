//
//  MarvelDetailsModel.swift
//  APIIntegration[Swift]
//
//  Created by Divum on 08/05/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import Foundation
import ObjectMapper

public struct MarvelDetailsModel : Mappable {
    var name : String?
    var realname : String?
    var team : String?
    var firstappearance : String?
    var createdby : String?
    var publisher : String?
    var imageurl : String?
    var bio : String?

    public init?(map: Map) {

    }

    mutating public func mapping(map: Map) {

        name <- map["name"]
        realname <- map["realname"]
        team <- map["team"]
        firstappearance <- map["firstappearance"]
        createdby <- map["createdby"]
        publisher <- map["publisher"]
        imageurl <- map["imageurl"]
        bio <- map["bio"]
    }

}
