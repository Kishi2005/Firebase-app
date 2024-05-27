//
//  FireBase_appApp.swift
//  FireBase_app
//
//  Created by Lorenzo Fravolini on 20/12/23.
//

import SwiftUI
import Firebase

@main
struct FireBase_appApp: App {
    @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(dataManager)
        }
    }
}
