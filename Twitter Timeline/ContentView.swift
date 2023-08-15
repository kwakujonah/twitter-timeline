//
//  ContentView.swift
//  Twitter Timeline
//
//  Created by Kwaku Jonah on 05/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Timeline()
                .tabItem {
                Label("", systemImage: "house")
            }
            Search()
                .tabItem {
                Label("", systemImage: "magnifyingglass")
            }
            Notifications()
                .tabItem {
                Label("", systemImage: "bell")
            }
            Messages()
                .tabItem {
                Label("", systemImage: "envelope")
            }
        }.background(Color("bg-color"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
