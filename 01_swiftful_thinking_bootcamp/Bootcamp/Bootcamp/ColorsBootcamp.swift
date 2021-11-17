//
//  ColorsBootcamp.swift
//  Bootcamp
//
//  Created by Mark Connelly on 17/11/21.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                // Color.red
                // Color.primary
                // Color(#colorLiteral(red: 0, green: 0.3, blue: 0.6, alpha: 1))
                // Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 200, height: 150)
            .shadow(color: .black, radius: 10, x: 10, y: 10)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
            
            
    }
}
