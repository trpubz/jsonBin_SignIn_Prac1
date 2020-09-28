//
//  OnBoardingSecure.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/27/20.
//

import SwiftUI

struct OnBoardingSecure: View {
    @Binding var link: String
    @State private var validation: String = ""
    @State private var validPassword: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                SecureField("Password (8 characters)", text: $link, onCommit: {
                        if link.count < 8 {
                            validPassword = false
                        } else {
                            validPassword = true
                        }
                    })
                    .montserratFont(style: .callout, weight: .regular, color: .preemPrimary)
                    .accentColor(.preemGreen)
                
                if validPassword {
                    Image(systemName: "checkmark.square.fill").foregroundColor(.preemGreen)
                } else if validPassword && !link.isEmpty {
                    Image(systemName: "xmark.square.fill").foregroundColor(.red)
                }
            }
            Divider()
            
            SecureField("Confirm Password", text: $validation)
                .montserratFont(style: .callout, weight: .regular, color: .preemPrimary)
                .accentColor(.preemGreen)
            Divider()
            
            if validation == link && !link.isEmpty {
                Button("Sign Up") {
                    //goto dashboard
                }
            }
        }
    }
}

struct OnBoardingSecure_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingSecure(link: .constant(""))
            .frame(width: 200)
    }
}
