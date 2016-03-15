//
//  ViewController.swift
//  HelloJokes
//
//  Created by King Justin on 3/13/16.
//  Copyright © 2016 justinleesf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterTapped(sender: AnyObject) {
        label.text = textField.text
    }


    @IBAction func alignLeftTapped(sender: AnyObject) {
        label.textAlignment = NSTextAlignment.Left
    }
    @IBAction func alignRightTapped(sender: AnyObject) {
        label.textAlignment = NSTextAlignment.Right
    }
    @IBAction func alignCenterTapped(sender: AnyObject) {
                label.textAlignment = NSTextAlignment.Center
    }
    @IBAction func setShadowTapped(sender: AnyObject) {
        label.layer.shadowColor = UIColor.blackColor().CGColor
        label.layer.shadowOffset = CGSizeMake(3, 3)
        label.layer.shadowRadius = 2
        label.layer.shadowOpacity = 0.25
    }
    @IBAction func setFontTapped(sender: AnyObject) {
        label.font = UIFont(name: "spaceage", size: 30.0)
    }
    @IBAction func setSizeTapped(sender: AnyObject) {

    }
    @IBAction func setColorTapped(sender: AnyObject) {
        label.textColor = UIColor.blueColor()
    }
}

