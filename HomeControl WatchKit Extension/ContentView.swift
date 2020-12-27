//
//  ContentView.swift
//  HomeControl WatchKit Extension
//
//  Created by Mark Zuber on 12/26/20.
//

import SwiftUI

struct ContentView: View {
    var clientApi = ClientApi(serverAddr: "http://192.168.2.203:8080");
    
    var body: some View {
        VStack {
            
            HStack {
                Button(action: {
                    print("mute clicked")
                    clientApi.mute()
                }) {
                    Text("Mute")
                }
                Button(action: {
                    print("vol down clicked")
                    clientApi.volumeDown()
                }) {
                    Text("Vol-")
                }
                Button(action: {
                    print("vol up clicked")
                    clientApi.volumeUp()
                }) {
                    Text("Vol+")
                }
            }
            HStack {
                Button(action: {
                    print("xbox clicked")
                    clientApi.watchXbox()
                }) {
                    Text("XBOX")
                }
                Button(action: {
                    print("ps4 clicked")
                    clientApi.watchPlaystation()
                }) {
                    Text("PS4")
                }
            }
            HStack {
                Button(action: {
                    print("atv clicked")
                    clientApi.watchAppleTv()
                }) {
                    Text("ATV")
                }
                Button(action: {
                    print("off clicked")
                    clientApi.powerOff()
                }) {
                    Text("OFF")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
