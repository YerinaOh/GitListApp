//
//  ContentView.swift
//  GithubSample
//
//  Created by ohyesrina on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    TabInfo.home.imageItem
                    TabInfo.home.textItem
                }
            ProfileView()
                .tabItem {
                    TabInfo.profile.imageItem
                    TabInfo.profile.textItem
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
