//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by 19543442 on 26.10.2022.
//

import SwiftUI

struct ButtonView: View {
    @Binding var timer: TimeCounter
    @Binding var buttonText: String
    
   
        var body: some View {
            Button(action: timer.startTimer) {
                Text("\(timer.buttonTitle)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 60)
            .background(Color.red)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4)
            )
        }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(timer: .constant(TimeCounter()), buttonText: .constant(""))
    }
}
