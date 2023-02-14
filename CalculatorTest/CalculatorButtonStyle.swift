//
//  ButtonStyle.swift
//  CalculatorTest
//
//  Created by Rajkumar Sharma on 14/02/23.
//

import SwiftUI

struct CalculatorButtonStyle: ButtonStyle {
    
    var isWide: Bool = false
    var size: CGFloat = 50
    var backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label.font(.system(size: 32, weight: .medium))
            .frame(width: size, height: size)
            .frame(maxWidth: isWide ? .infinity : size, alignment: .center)
            .background(backgroundColor)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        let abutton = ButtonTypes.digit(0)
        
        Button(abutton.title){}
            .buttonStyle(CalculatorButtonStyle(
                isWide: false,
                size: 100,
                backgroundColor: abutton.backgroundColor
            ))
            .padding()
    }
}
