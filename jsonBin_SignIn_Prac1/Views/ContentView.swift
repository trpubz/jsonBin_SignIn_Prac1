//
//  ContentView.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/20/20.
//

import SwiftUI

struct ContentView: View {
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
                    OnBoardingUsername()
                    HStack {
                        Button("Check Username") {
                            self.user.pullUserList()
                        }
                        .montserratFont()
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
        ContentView()
    }
}
