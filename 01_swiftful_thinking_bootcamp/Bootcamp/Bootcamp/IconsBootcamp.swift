//
//  IconsBootcamp.swift
//  Bootcamp
//
//  Created by Mark Connelly on 30/11/21.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
//        Image(systemName: "heart.fill")
//            .resizable() // Makes boundry of the icon match the frame
//            //.aspectRatio(contentMode: .fit) // default is stretch, fill makes smallest dimension fit while larger overflows, fit makes smallest dimension fit
//            //.scaledToFit()
//            .scaledToFill()
//            .font(.system(size: 200))
//            .foregroundColor(.red)
//            .frame(width: 300, height: 200) // The frame dimensions
//            .clipped() // overflow over frame will be clipped
        
        Image(systemName: "xmark")
            .foregroundColor(Color.red)
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
