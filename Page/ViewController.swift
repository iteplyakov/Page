//
//  ViewController.swift
//  Page
//
//  Created by Iwan Teplyakov on 6/20/18.
//  Copyright © 2018 Iwan Teplyakov. All rights reserved.
//

import UIKit
import SwiftyBeaver

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SwiftyBeaver.custom(level: .info, message: "Yo!")
    }


}

