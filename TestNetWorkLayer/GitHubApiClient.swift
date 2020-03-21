//
//  GitHubApiClient.swift
//  TestNetWorkLayer
//
//  Created by Ominext on 2/13/20.
//  Copyright © 2020 Ominext. All rights reserved.
//

import Foundation
let kGitHubApiBaseUrl = "https://api.github.com/"

typealias GitHubGetUserCallback = (GitHubUserData) -> Void
typealias ErrorCallback = (NSError) -> Void

protocol GitHubApiClient {

  static func requestUserWithUsername(_ username: String,
   onSuccess: GitHubGetUserCallback?,
   onError: ErrorCallback?)
}
