//
//  ButtonVIew.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import SwiftUI

struct ButtonVIew: View {
   @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: { timer.startTimer()}) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        }
    }
}

struct ButtonVIew_Previews: PreviewProvider {
    static var previews: some View {
        ButtonVIew(timer: TimeCounter())
    }
}
