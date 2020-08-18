//
//  ViewController.swift
//  VOApp
//
//  Created by Aijaz Ansari on 8/17/20.
//  Copyright © 2020 Euclid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randLabel: UILabel!
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.accessibilityElements = [headingLabel!, nameLabel!, button!, randLabel!]
    }

    @IBAction func genRand(_ sender: Any) {
        let randomInt = Int.random(in: 1..<5)
        randLabel.text = "\(randomInt)"
    }

}

