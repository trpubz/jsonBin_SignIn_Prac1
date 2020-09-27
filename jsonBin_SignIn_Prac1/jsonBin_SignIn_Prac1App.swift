//
//  jsonBin_SignIn_Prac1App.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/20/20.
//

import SwiftUI

@main
struct jsonBin_SignIn_Prac1App: App {
    @StateObject var user = UserStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(user)
        }
    }
}
