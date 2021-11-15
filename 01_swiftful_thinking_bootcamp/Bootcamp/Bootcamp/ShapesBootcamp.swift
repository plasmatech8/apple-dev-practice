//
//  ShapesBootcamp.swift
//  Bootcamp
//
//  Created by Mark Connelly on 15/11/21.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {

//        Circle()
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
//        Ellipse()
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [50]))
//            .frame(width: 200, height: 100)
//        Capsule(style: .continuous)
//            .fill(Color.red)
//            .frame(width: 200, height: 100)
//        Rectangle()
//            .fill(Color.red)
//            .frame(width: 200, height: 100)
        RoundedRectangle(cornerRadius: 20)
            .trim(from: 0.4, to: 1.0)
            .fill(Color.red)
            .foregroundColor(Color.blue)
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
