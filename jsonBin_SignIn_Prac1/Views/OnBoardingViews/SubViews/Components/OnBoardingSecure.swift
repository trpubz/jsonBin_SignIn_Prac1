//
//  OnBoardingSecure.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/27/20.
//

import SwiftUI

struct OnBoardingSecure: View {
    var box: String
    @Binding var link: String
    
    var body: some View {
        VStack {
            SecureField(box, text: $link)
                .montserratFont(style: .callout, weight: .regular, color: .preemPrimary)
                .accentColor(.preemGreen)
            Divider()
        }
    }
}

struct OnBoardingSecure_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingSecure(box: "Confirm Password", link: .constant(""))
            .frame(width: 200)
    }
}
