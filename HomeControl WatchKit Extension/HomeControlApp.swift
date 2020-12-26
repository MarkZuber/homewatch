//
//  HomeControlApp.swift
//  HomeControl WatchKit Extension
//
//  Created by Mark Zuber on 12/26/20.
//

import SwiftUI

@main
struct HomeControlApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
