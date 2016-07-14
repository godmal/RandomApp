//
//  MainViewController.swift
//  RandomNumber
//
//  Created by Дмитрий Горбачев on 13.07.16.
//  Copyright © 2016 Дмитрий Горбачев. All rights reserved.

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var minValueField: UITextField!
    @IBOutlet weak var maxValueField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    var citiesArray: NSMutableArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        citiesArray = NSMutableArray()
        settingsView.layer.cornerRadius = 15.0
        settingsView.clipsToBounds = true
    }
    @IBAction func showMenu(sender: AnyObject) {
        UIView.animateWithDuration(1) { 
            self.settingsView.alpha = 1
        }
    }
    @IBAction func doneButton(sender: AnyObject) {
        UIView.animateWithDuration(1) {
            self.settingsView.alpha = 0
        }
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
        let lower = UInt32(minValueField.text!)
        let upper = UInt32(maxValueField.text!)
        let randomNumber = arc4random_uniform((upper! + 1) - lower!) + lower!
        resultLabel.text = String(randomNumber)
        citiesArray.addObject(String(randomNumber))
    }
    @IBAction func printArray(sender: AnyObject) {
        print(citiesArray)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}