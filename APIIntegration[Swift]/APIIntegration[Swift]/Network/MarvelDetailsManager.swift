//
//  MarvelDetailsManager.swift
//  APIIntegration[Swift]
//
//  Created by Divum on 08/05/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import Foundation
import ObjectMapper

class MarvelDetailsManager {

    private static let shared = MarvelDetailsManager()

    static func getDetails(_ success: @escaping ((_ response: [MarvelDetailsModel]) -> Void)) {
        MarvelDetailsManager.shared.getDetails { (result) in
            success(result)
        }
    }
}

extension MarvelDetailsManager {

    private func getDetails(callback: @escaping ((_ response: [MarvelDetailsModel]) -> Void)) {
        let apiUrl = Application.Api.baseUrl
        guard let url = URL(string: apiUrl) else {return}
        print("calling -----> \(apiUrl)")
        let task = URLSession.shared.dataTask(with: url) { (data, response, err) in
            do {
                let result = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! NSArray
                var responseData: [MarvelDetailsModel] = []
                for item in result {
                    guard let model = Mapper<MarvelDetailsModel>().map(JSONObject: item) else {return}
                    responseData.append(model)
                }
                print("\(responseData)")
                callback(responseData)
            }
            catch {
                print("JSON Serialization error: \(String(describing: err))")
            }
        }
        task.resume()
    }
}
