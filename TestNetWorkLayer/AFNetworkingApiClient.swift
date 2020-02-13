//
//  AFNetworkingApiClient.swift
//  TestNetWorkLayer
//
//  Created by Ominext on 2/13/20.
//  Copyright © 2020 Ominext. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class AFNetWorkingApiClient: GitHubApiClient {
    static func requestUserWithUsername(username: String, onSuccess: GitHubGetUserCallback?, onError: ErrorCallback?) {
          let urlString = "https://api.github.com/users/\(username)"
                AF.request(urlString).responseJSON { (response) in
                    switch response.result{
                    case .success(_):
                        if let data  = response.data{
                            let json = try! JSON(data: data)
                            onSuccess?(GitHubUserData(json: json))
                        }
                        break
                    case .failure(let err):
                    onError?(err as NSError)
                        break
        //                    onError(err as NSError)
                    }
                }
    }
    
    
    
    
    
    
}
