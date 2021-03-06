//
//  ViewController.swift
//  HelloJokes
//
//  Created by King Justin on 3/13/16.
//  Copyright © 2016 justinleesf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    var timer = NSTimer()
    var counter = 0

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var clockLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var secondLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
             timer = NSTimer.scheduledTimerWithTimeInterval(0, target: self, selector: ("updateClock"), userInfo: nil, repeats: true)
        
    }
    @IBAction func randomWordButtonClicked(sender: AnyObject) {
        
        let randWord = arc4random_uniform(5)
        
        switch (randWord) {
            
        case 0:
            label.text = "blue" + String(randWord)
            break
        case 1:
            label.text = "red" + String(randWord)
            break
        case 2:
            label.text = "green" + String(randWord)
            break
        case 3:
            label.text = "purple"
            break
        case 4:
            label.text = "orange"
            break
        
        default:
            break
            
            
        }

        
    }
    @IBAction func jokeButtonClicked(sender: AnyObject) {
        
        let randJoke = arc4random_uniform(5)
        
        switch(randJoke) {
        case 1:
            label.text = "Why are computers like air conditioners"
            secondLabel.text = "They stop working when you open Windows"
            break
        case 2:
            label.text = "What is the difference between a snowman and a snowwomen?"
            secondLabel.text = "Snowballs"
            break
        case 3:
            label.text = "What do you call a fake noodle?"
            secondLabel.text = "An impasta"
        case 4:
            label.text = "What is the stupidest animal in a jungle?"
            secondLabel.text = "A polar bear"
            break
        case 5:
            label.text = "Why did the sheep cross the road?"
            secondLabel.text = "To go to a baaaa-rber shop"
            break
        
        default:
        break
        }
    
        
    }
    @IBAction func randomButtonClicked(sender: AnyObject) {
        let rand = arc4random_uniform(100)
        label.text = String(rand)
    }
    @IBOutlet weak var randomButtonClicked: UIButton!
    @IBAction func disableButtonClicked(sender: AnyObject) {
        self.enterButton.enabled = false
    }
    @IBAction func enableButtonClicked(sender: AnyObject) {
        self.enterButton.enabled = true
    }
    @IBAction func revealButtonClicked(sender: AnyObject) {
        self.label.hidden = false
    }
    @IBAction func hideButtonClicked(sender: AnyObject) {
                self.label.hidden = true
    }
    @IBAction func fadeIn(sender: AnyObject) {
        UIView.animateWithDuration(0.3, animations:{
            self.label.alpha = 1
        })
    }
    @IBAction func fadeOut(sender: AnyObject) {
        UIView.animateWithDuration(0.3, animations:{
            self.label.alpha = 0
        })
    }
    @IBAction func startButton(sender: UIButton) {
        counter = 0
        timeLabel.text = String(counter)
        
   
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0, target: self, selector: ("updateCounter"), userInfo: nil, repeats: true)
    }
    
    func updateClock() {
        
        let dateFormatter = NSDateFormatter()
        let timeFormatter = NSDateFormatter()
        
        //long, short, medium
        dateFormatter.dateStyle = .MediumStyle
        timeFormatter.timeStyle = .MediumStyle
        
        clockLabel.text = dateFormatter.stringFromDate(NSDate() )
        
        dateLabel.text = timeFormatter.stringFromDate(NSDate())

    }
    
    @IBAction func stopButton(sender: UIButton) {
        timer.invalidate()
    }
    func updateCounter() {
        counter += 1
        timeLabel.text = String(counter)
    }
    
    @IBAction func dismissKeyboard(sender: UITextField) {
        label.text = textField.text
        self.resignFirstResponder()
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

