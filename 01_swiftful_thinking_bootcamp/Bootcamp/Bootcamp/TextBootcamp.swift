//
//  TextBootcamp.swift
//  Bootcamp
//
//  Created by Mark Connelly on 12/11/21.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, world! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning a lot.")
            .font(.body)
            .bold()
            .underline()
            .italic()
            .baselineOffset(20.0) // Distance between letter and base line
            .kerning(1) // Letter spacing
            .foregroundColor(.blue) // Text color
            .frame(width: 200, height: 200, alignment: .center) // Text box dimensions with overflow elipses (...)
            .minimumScaleFactor(0.5) // Allows text to shink size to fit in frame - minimum size
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
