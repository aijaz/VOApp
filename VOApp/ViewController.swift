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
    @IBOutlet weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let element = UIAccessibilityElement(accessibilityContainer: containerView!)
        element.accessibilityLabel = "The name is \(nameLabel.text ?? "undefined") and the random number is \(randLabel.text ?? "undefined")"
        element.accessibilityFrameInContainerSpace = containerView.frame
        view.accessibilityElements = [element]
    }

    @IBAction func genRand(_ sender: Any) {
        let randomInt = Int.random(in: 1..<5)
        randLabel.text = "\(randomInt)"
    }

}

