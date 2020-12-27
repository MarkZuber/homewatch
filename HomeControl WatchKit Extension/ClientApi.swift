//
//  ClientApi.swift
//  HomeControl WatchKit Extension
//
//  Created by Mark Zuber on 12/26/20.
//

import Foundation

class ClientApi {
    var serverAddr: String
    
    // e.g. http://192.168.2.203:8080
    init(serverAddr: String) {
        self.serverAddr = serverAddr;
    }
    
    func mute() {
        httpPost(path: "/api/streamdeck/4")
    }
    
    func volumeUp() {
        httpPost(path: "/api/streamdeck/9")
    }
    
    func volumeDown() {
        httpPost(path: "/api/streamdeck/14")
    }
    
    func watchXbox() {
        httpPost(path: "/api/streamdeck/0")
    }
    
    func watchPlaystation() {
        httpPost(path: "/api/streamdeck/1")
    }
    
    func watchAppleTv() {
        httpPost(path: "/api/streamdeck/2")
    }
    
    func powerOff() {
        httpPost(path: "/api/streamdeck/10")
    }
    
    func httpPost(path: String) {
        let url = URL(string: self.serverAddr + path)!
        let urlSession = URLSession.shared
        var getRequest = URLRequest(url: url)
        getRequest.httpMethod = "POST"
        let task = urlSession.dataTask(with: getRequest as URLRequest, completionHandler: {_, _, _ in})
        task.resume()
        
    }
}
