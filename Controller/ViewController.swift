//
//  ViewController.swift
//  Controller
//
//  Created by Rohin Tangirala on 12/4/16.
//  Copyright © 2016 Rohin Tangirala. All rights reserved.
//

import UIKit
import CoreMotion

import CocoaAsyncSocket

class ViewController: UIViewController {
    
    
    @IBOutlet weak var playerLabel: UILabel!
    
    var playerID:Int?
//    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playerLabel.text = "Player \(playerID!)"
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        motionManager = CMMotionManager()
//        motionManager.startAccelerometerUpdates()
//        while(true){
//            if let accelerometerData = motionManager.accelerometerData {
//                print(accelerometerData.acceleration.x)
//                ControllerManager.sharedInstance.sendData(x: accelerometerData.acceleration.x)
//            }
//        }
//    }

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

