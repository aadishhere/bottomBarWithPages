//
//  BottomTabBarView.swift
//  bottomBarWithPages
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

struct BottomTabBarView: View {
    @Binding var selectedTab: Tab
    @Namespace private var animation

    var body: some View {
        GeometryReader { geo in
            let tabCount = Tab.allCases.count
            let tabWidth = geo.size.width / CGFloat(tabCount)
            let index = Tab.allCases.firstIndex(of: selectedTab) ?? 0
            let xOffset = tabWidth * CGFloat(index) + tabWidth / 2

            ZStack(alignment: .topLeading) {
                BottomTabBarShape(cutoutX: xOffset)
                    .fill(.blue.opacity(0.7))
                    .frame(height: 100)
                    

                HStack(spacing: 0) {
                    TabBarButton(icon: "house", label: .home, selectedTab: $selectedTab)
                    TabBarButton(icon: "checklist", label: .tasks, selectedTab: $selectedTab)
                    TabBarButton(icon: "calendar", label: .calendar, selectedTab: $selectedTab)
                    TabBarButton(icon: "person.crop.circle", label: .profile, selectedTab: $selectedTab)
                }
                .padding(.horizontal, 4)
                .padding(.bottom, 1)
                .frame(height: 90)
            }
        }
        .frame(height: 90)
    }
}
