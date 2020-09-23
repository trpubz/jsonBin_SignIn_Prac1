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
    @EnvironmentObject var user: UserStore
    
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
                VStack(alignment: .leading, spacing: 15) {
                    TextField("Choose a username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        .frame(height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    HStack {
                        Button("Check Username") {
                            user.pullUserList()
                        }
                        .padding(10)
                        .background(Rectangle().fill(Color.white).cornerRadius(5))
                        
                        .buttonStyle(DefaultButtonStyle())
                        Spacer()
                        Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
                    }
                    
                    
                }
                    .padding()
                    .frame(width: 250)
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
