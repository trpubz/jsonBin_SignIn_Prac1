//
//  TextBoxView.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/25/20.
//

import SwiftUI

struct OnBoardingUsername: View {
    @EnvironmentObject var usr: UserStore
    
    var body: some View {
        VStack(spacing: 26) {
            OnBoardingTextBoxView(box: "Username", link: $usr.usr.username)
            
            OnBoardingTextBoxView(box: "Email", link: $usr.usr.email)
            
            OnBoardingSecure(box: "Password", link: $usr.usr.password)
            
            
        }
        .frame(width: UIScreen.main.bounds.width - 160, alignment: .center)
        .padding()
    }
}

struct TextBoxView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            OnBoardingUsername()
                .environmentObject(UserStore())
        }
        
            
    }
}
