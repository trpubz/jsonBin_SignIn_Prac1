//
//  ContentView.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/20/20.
//

import SwiftUI

struct ContentView: View {
    @Binding var username: String
    @State var textField: String
    
    var body: some View {
        ZStack {
            Image("loginBG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
            VStack {
                Spacer()
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
                Spacer()
                TextField("Choose a username", text: $username)
                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(username: .constant(""), textField: "")
    }
}
