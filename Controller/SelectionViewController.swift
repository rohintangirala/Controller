//
//  SelectionViewController.swift
//  Controller
//
//  Created by Rohin Tangirala on 12/4/16.
//  Copyright © 2016 Rohin Tangirala. All rights reserved.
//

import Foundation
import UIKit

class SelectionViewController: UIViewController{
    
    var playerID = 0
    
    override func viewDidLoad() {
        
    }
    @IBAction func nextView(_ sender: Any) {
    }
    @IBAction func Player1Selected(_ sender: Any) {
        ControllerManager.sharedInstance.player(x: 1)
        playerID = 1
        self.performSegue(withIdentifier: "nextView", sender: sender)
    }
    @IBAction func Player2Selected(_ sender: Any) {
        ControllerManager.sharedInstance.player(x: 2)
        playerID = 2
        self.performSegue(withIdentifier: "nextView", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! ViewController
        dest.playerID = playerID
        ControllerManager.sharedInstance.setPlayer(player: playerID)
    }
}
