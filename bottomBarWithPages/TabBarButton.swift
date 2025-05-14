//
//  TabBarButton.swift
//  bottomBarWithPages
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

struct TabBarButton: View {
    var icon: String
    var label: Tab
    @Binding var selectedTab: Tab

    var body: some View {
        Button(action: {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                selectedTab = label
            }
        }) {
            VStack(spacing: 6) {
                Image(systemName: icon)
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(Color(.systemBackground))
            }
            .frame(maxWidth: .infinity)
        }
    }
}
