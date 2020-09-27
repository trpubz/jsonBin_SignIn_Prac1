//
//  OnBoardingTextBoxView.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/26/20.
//

import SwiftUI

struct OnBoardingTextBoxView: View {
    var box: String
    @Binding var link: String
    
    var body: some View {
        VStack {
            HStack {
                TextField(box, text: $link)
                    .montserratFont(style: .callout, weight: .regular, color: .preemPrimary)
                    .autocapitalization(.none)
            }
            Divider()
        }
        
    }
}

struct OnBoardingTextBoxView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingTextBoxView(box: "Username", link: .constant(""))
            .frame(width: 200)
    }
}
