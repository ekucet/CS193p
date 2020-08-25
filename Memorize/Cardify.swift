//
//  Cardify.swift
//  Memorize
//
//  Created by Erkam Kucet on 25.08.2020.
//  Copyright © 2020 Erkam Kucet. All rights reserved.
//

import SwiftUI

struct Cardify: ViewModifier {
    
    var isFaceUp: Bool
    private let cornerRadius: CGFloat = 10.0
    private let edgeLineWidth: CGFloat = 3
    
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
                content
            }else {
                RoundedRectangle(cornerRadius: cornerRadius).fill()
            }
        }
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
 
