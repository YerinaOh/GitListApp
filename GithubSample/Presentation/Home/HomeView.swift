//
//  HomeView.swift
//  GithubSample
//
//  Created by ohyesrina on 2022/06/19.
//

import SwiftUI

struct HomeView: View {
    init() {
        UITableView.appearance().backgroundColor = .systemBackground
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(ProfileMenu.allCases) { section in
                    Section(
                        header: Text(section.title)
                    ) {
                        ForEach(section.menu, id: \.hashValue) { raw in
                            NavigationLink(raw, destination: Text("\(raw)"))
                        }
                    }
                }
            }
                .listStyle(GroupedListStyle())
                .navigationTitle("Home")
                .toolbar {
                    NavigationLink(
                        destination: SettingView(),
                        label: {
                            Image(systemName: "gear")
                        })
                }
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
