//
//  TabInfo.swift
//  GithubSample
//
//  Created by ohyesrina on 2022/06/19.
//

import SwiftUI

enum TabInfo {
    case home
    case profile

    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .profile: return Text("Other")
        }
    }

    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .profile: return Image(systemName: "ellipsis")
        }
    }
}
