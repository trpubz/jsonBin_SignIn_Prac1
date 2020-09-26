//
//  TextBoxView.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/25/20.
//

import SwiftUI

struct TextBoxView: View {
    @Binding var username: String
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .montserratFont(style: .title1, weight: .regular, color: .preemWhite)
                
            Divider()
        }
        .frame(width: UIScreen.main.bounds.width - 160, alignment: .center)
    }
}

struct TextBoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextBoxView(username: .constant(""))
                
        }
            
    }
}
