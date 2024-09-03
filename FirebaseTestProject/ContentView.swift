//
//  ContentView.swift
//  Firebase
//
//  Created by Pavankumar Arepu on 30/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isUserLoggedIn = false
    
    var body: some View {
        if isUserLoggedIn {
//            HomeView() // Your main view after login
        } else {
            NavigationView {
                VStack {
                    NavigationLink(destination: SignupView()) {
                        Text("Sign Up")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding()
                    
                    NavigationLink(destination: LoginView()) {
                        Text("Login")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding()
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
