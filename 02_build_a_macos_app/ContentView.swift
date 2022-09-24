//
//  ContentView.swift
//  my-app
//
//  Created by Mark Connelly on 24/9/2022.
//

import SwiftUI

struct Option: Hashable {
    let title : String
    let imageName: String
}

struct ContentView: View {
    @State var currentOption = 0
    let options: [Option] = [
        .init(title: "Home", imageName: "house"),
        .init(title: "About", imageName: "info.circle"),
        .init(title: "Settings", imageName: "gear"),
        .init(title: "Social", imageName: "message")
    ]

    var body: some View {
        NavigationView {
            // Sidebar Section
            ListView(
                options: options,
                currentSelection: $currentOption
            )
            // Main Section
            switch currentOption {
            case 0:
                MainView()
            case 1:
                Text("About View")
            case 2:
                Text("Settings View")
            case 3:
                Text("Social View")
            default:
                Text("Err View")
            }
        }
        .frame(minWidth: 600, minHeight: 400)
    }
}

struct ListView: View {
    let options: [Option]
    @Binding var currentSelection: Int

    var body: some View {
        VStack{
            ForEach(Array(options.enumerated()), id: \.1) { index, option in
                HStack() {
                    // Tab Icon
                    Image(systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    // Tab Label
                    Text(option.title)
                        .foregroundColor(currentSelection == index ? Color(.linkColor) : Color(.labelColor))
                    // Bottom Spacer
                    Spacer()
                }
                    .padding(8)
                    .onTapGesture {
                        self.currentSelection = index
                    }

            }
            Spacer()
        }
    }
}

struct MainView: View {
    let cols: [GridItem] = [
        .init(.flexible()),
        .init(.flexible()),
        .init(.flexible())
    ]
    let images = [
        "frog",
        "rough_day_huh",
        "pepe",
        "turtle_guy",
        "polite_cat",
        "mlg_frog"
    ]
    var body: some View {
        VStack {
            // Header
            Image("header")
                .resizable()
                .aspectRatio(contentMode: .fit)
            // Content
            LazyVGrid(columns: cols) {
                ForEach(images, id: \.self) { imageName in
                    VStack {
                        Image(imageName).resizable().aspectRatio(contentMode: .fit)
                        Text("A meme")
                    }
                }
            }
            // Bottom Spacer
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
