//
//  NativeApiClientSpec.swift
//  TestNetWorkLayer
////  Created by Ominext on 2/13/20.
//  Copyright © 2020 Ominext. All rights reserved.
//

import Quick
import Nimble
import Mockingjay
@testable import TestNetWorkLayer
class NativeApiClientSpec:QuickSpec{
    
    override func spec() {
        super.spec()
        
        describe("first test") {
            context("success") {
//                it("should pass") {
//                      var returnedUserData: GitHubUserData?
//                      var returnedError:NSError?
//
//                       expect(1).to(equal(1))
//                }
                it("return GitHubUserData") {

                    var returnedUserData: GitHubUserData?
                    var returnedError:NSError?
                  AFNetWorkingApiClient.requestUserWithUsername("codedeman", onSuccess: { (userData) in
                        returnedUserData = userData
                    })
                    expect(returnedUserData).toEventuallyNot(beNil(),timeout: 20)
                  expect(returnedUserData?.name) == "Kien Pham"
                  expect(returnedUserData?.bio) == "Project manager\r\nemail:phamtrungkiendev@gmail.com\r\nblogger:codedeman"

                }
            }
            context("error"){
                let error = NSError(domain: "error", code: 404, userInfo: nil)
                it("returns error") {
                    var returnedError: NSError?
                    let path = Bundle.main.path(forResource: "GetUserSuccess", ofType: "json")
                        
                    let data = NSData(contentsOfFile: path ?? "")
                  self.stub(uri("https://api.github.com/users/codedeman"), failure(error))
                    AFNetWorkingApiClient.requestUserWithUsername(username: "codedeman", onSuccess:{ (error) in
                        returnedError = error
                      })
                    expect(returnedError).toEventuallyNot(beNil())

                        
                }
            }
            
        }
    }
    
}

