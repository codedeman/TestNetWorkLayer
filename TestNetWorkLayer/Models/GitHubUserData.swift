//
//  GitHubUserData.swift
//  TestNetWorkLayer
//
//  Created by Ominext on 2/13/20.
//  Copyright © 2020 Ominext. All rights reserved.
//

import Foundation
import SwiftyJSON
struct GitHubUserData {
  var name: String
  var bio: String
  var email: String
  var numberOfFollowers: Int
  var numberOfFollowing: Int
    
    init(json:JSON ) {
      name = json["name"].stringValue
      bio = json["bio"].stringValue
      email = json["email"].stringValue
      numberOfFollowers = json["followers"].intValue
      numberOfFollowing = json["following"].intValue
    }
  // ...
}
