//
//  CalculatorView.swift
//  CalculatorTest
//
//  Created by Rajkumar Sharma on 14/02/23.
//

import SwiftUI

struct CalculatorView: View {
    
    var buttonTypes: [[ButtonTypes]] {
        [
            [.digit(7), .digit(8), .digit(9), .operation("/")],
            [.digit(4), .digit(5), .digit(6), .operation("x")],
            [.digit(1), .digit(2), .digit(3), .operation("-")],
            [.allClear, .digit(0), .operation("=")]
        ]
    }
    
    
    private var buttonPad: some View {
        VStack(spacing: Constants.padding) {
            ForEach(buttonTypes, id: \.self) { row in
                HStack(spacing: Constants.padding) {
                    ForEach(row, id: \.self) { btn in
                        Button(btn.title){}
                            .buttonStyle(CalculatorButtonStyle(isWide: btn.isWide,
                                                               size: 80,
                                                               backgroundColor: btn.backgroundColor))
                    }
                }
            }
        }
        
        
    }
    
    private var displayText: some View {
        Text("0")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
    
    var body: some View {
        VStack {
            Spacer()
            displayText
            buttonPad
        }
        .padding(Constants.padding)
        .background(.black)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
