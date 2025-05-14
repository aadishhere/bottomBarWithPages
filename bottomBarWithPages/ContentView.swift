//
//  ContentView.swift
//  bottomBarWithPages
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .home

    var body: some View {
        ZStack {
            switch selectedTab {
            case .home:
                Text("Home Screen")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            case .tasks:
                Text("Task Screen")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            case .calendar:
                Text("Calendar Screen")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            case .profile:
                Text("Profile Screen")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }

            VStack {
                Spacer()
                BottomTabBarView(selectedTab: $selectedTab)
            }
        }
    }
}

#Preview {
    ContentView()
}
