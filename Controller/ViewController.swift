//
//  ViewController.swift
//  Controller
//
//  Created by Rohin Tangirala on 12/4/16.
//  Copyright © 2016 Rohin Tangirala. All rights reserved.
//

import UIKit

import CocoaAsyncSocket

class ViewController: UIViewController {
    
    
    @IBOutlet weak var playerLabel: UILabel!
    
    var playerID:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playerLabel.text = "Player \(playerID!)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func upPressed(_ sender: Any) {
        ControllerManager.sharedInstance.stopMoving()
    }
    @IBAction func upReleased(_ sender: Any) {
        ControllerManager.sharedInstance.moveUp()
    }
    
    @IBAction func downPressed(_ sender: Any) {
        ControllerManager.sharedInstance.stopMoving()
    }
    @IBAction func downReleased(_ sender: Any) {
        ControllerManager.sharedInstance.moveDown()
    }
    
    
}

