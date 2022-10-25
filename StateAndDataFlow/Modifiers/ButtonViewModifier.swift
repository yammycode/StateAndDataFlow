//
//  ButtonViewModifier.swift
//  StateAndDataFlow
//
//  Created by Anton Saltykov on 25.10.2022.
//

import SwiftUI

struct ButtonViewModifier: ViewModifier {

    let backgroundColor: Color

    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(backgroundColor)
            .cornerRadius(20)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4)
            }
    }
}

extension Button {
    func defaultStyling(color: Color) -> some View {
        ModifiedContent(content: self,
                        modifier: ButtonViewModifier(backgroundColor: color))
    }
}
