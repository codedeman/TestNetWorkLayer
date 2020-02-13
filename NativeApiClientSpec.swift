//
//  NativeApiClientSpec.swift
//  TestNetWorkLayer
////  Created by Ominext on 2/13/20.
//  Copyright © 2020 Ominext. All rights reserved.
//

import Quick
import Nimble
import Mockingjay
class NativeApiClientSpec:QuickSpec{
    
    override func spec() {
        super.spec()
        
        describe("first test") {
            context("success") {
                
                it("return GitHubUserData") {
                    
                   

                    var returnedUserData: GitHubUserData?

                    AFNetWorkingApiClient.requestUserWithUsername(username: "coddema", onSuccess: { (userData) in
                        returnedUserData = userData
                    }) { (error) in
                        debugPrint(error)
                    }
                    expect(returnedUserData).toEventuallyNot(beNil(),timeout: 20)
                }
            }
            context("error"){
                let error = NSError(domain: "error", code: 404, userInfo: nil)
                it("returns error") {
                    var returnedError: NSError?
                    let path = Bundle.main.path(forResource: "GetUserSuccess", ofType: "json")
                        
//                    let data = NSData(contentsOfFile: path ?? "")
//                    self.stub(uri("https://api.github.com/users/codedeman"), jsonData(data as! Data))
//                    AFNetWorkingApiClient.requestUserWithUsername(username: "codedeman", onSuccess: { (userData) in
//
//                    }) { (error) in
//                        returnedError = error
//                    }
//                    expect(returnedError).toEventuallyNot(beNil())

                        
                }
            }
            
        }
    }
    
}

