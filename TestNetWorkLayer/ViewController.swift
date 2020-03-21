//
//  ViewController.swift
//  TestNetWorkLayer
//
//  Created by Ominext on 2/13/20.
//  Copyright © 2020 Ominext. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      AFNetWorkingApiClient.requestUserWithUsername("codedeman", onSuccess: { (success) in
            print(success)
        }) { (error) in
            debugPrint(error)
        }
        // Do any additional setup after loading the view.
    }
    
    


}

