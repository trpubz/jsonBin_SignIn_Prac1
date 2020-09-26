//
//  Fonts.swift
//  jsonBin_SignIn_Prac1
//
//  Created by Taylor Pubins on 9/23/20.
//

import SwiftUI

struct MontserratFontModifier: ViewModifier {
    var style: UIFont.TextStyle = .body
    var weight: Font.Weight = .regular
    var color: Color = .preemDark
    
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: style).pointSize).weight(weight))
            .foregroundColor(color)
            
    }
}

extension View {
    func montserratFont(style: UIFont.TextStyle, weight: Font.Weight, color: Color) -> some View {
        self.modifier(MontserratFontModifier(style: style, weight: weight, color: color))
    }
    
    func montserratFont() -> some View {
        self.modifier(MontserratFontModifier())
    }
    
}
