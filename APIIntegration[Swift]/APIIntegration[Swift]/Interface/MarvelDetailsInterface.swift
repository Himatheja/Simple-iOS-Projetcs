//
//  MarvelDetailsInterface.swift
//  APIIntegration[Swift]
//
//  Created by Divum on 08/05/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import Foundation

public class MarvelDetailsInterface {
    public static let sharedInstance = MarvelDetailsInterface()
    public init(){}

    public func getDetails(_ success: @escaping ((_ response: [MarvelDetailsModel]) -> Void)) {
        MarvelDetailsManager.getDetails { (result) in
            success(result)
        }
    }
}
