//
//  SignUpVC.swift
//  MVVMDemo
//
//  Created by AJAY on 24/07/21.
//  Copyright © 2021 Individual. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    //MARK: Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(self.add())
    }
    func add() -> Int{
        return 2 + 3
    }

}
