//
//  FirebaseTestProjectApp.swift
//  FirebaseTestProject
//
//  Created by Sudheer Vasepalli on 31/08/24.
//

import SwiftUI
import FirebaseAuth
import Firebase
@main
struct FirebaseTestProjectApp: App {
    @StateObject var authViewModel = AuthViewModel()
    init() {
        FirebaseApp.configure()
       }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authViewModel)
        }
    }
}
