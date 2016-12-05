//
//  ControllerManager.swift
//  Controller
//
//  Created by Rohin Tangirala on 12/4/16.
//  Copyright © 2016 Rohin Tangirala. All rights reserved.
//

import Foundation



class ControllerManager {
    let redisServer = Redis()
    let ip = "10.152.2.12"
    let port = 6379
    var playerID: Int!
    
    
    init() {
        connect()
        redisServer.Command(Command: "LPUSH list 0")
        redisServer.Command(Command: "LPUSH list 0")
        
    }
    
    private func connect() {
        redisServer.server(endPoint: ip, onPort: UInt16(port))
    }
    
    public func setPlayer(player:Int){
        playerID = player
    }
    
    class var sharedInstance: ControllerManager {
        struct Static {
            static let instance = ControllerManager()
        }
        return Static.instance
    }
    
    func sendData(x: Double){
        if(playerID==1){
            redisServer.Command(Command: "LSET list 0 \(x)")
        }
        else if(playerID==2){
            redisServer.Command(Command: "LSET list 1 \(x)")
        }
    }
    
    func moveUp() {
        if(playerID==1){
            redisServer.Command(Command: "LSET list 0 1")
        }
        else if(playerID==2){
            redisServer.Command(Command: "LSET list 1 1")
        }
    }
    
    func moveDown(){
        if(playerID==1){
            redisServer.Command(Command: "LSET list 0 -1")
        }
        else if(playerID==2){
            redisServer.Command(Command: "LSET list 1 -1")
        }
    }
    
    func stopMoving(){
        if(playerID==1){
            redisServer.Command(Command: "LSET list 0 0")
        }
        else if(playerID==2){
            redisServer.Command(Command: "LSET list 1 0")
        }
    }
    
    func player(x:Int){
        redisServer.Command(Command: "SET player \(x)")
        
    }
    
}
