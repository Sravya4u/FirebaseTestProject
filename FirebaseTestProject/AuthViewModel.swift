//
//  AuthViewModel.swift
//  Firebase
//
//  Created by Pavankumar Arepu on 30/08/24.
//

import Foundation
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var isUserLoggedIn: Bool = false
    
    init() {
        self.isUserLoggedIn = Auth.auth().currentUser != nil
        
        Auth.auth().addStateDidChangeListener { auth, user in
            self.isUserLoggedIn = user != nil
        }
    }
}
