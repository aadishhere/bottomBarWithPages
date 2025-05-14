//
//  BottomTabBarShape.swift
//  bottomBarWithPages
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

struct BottomTabBarShape: Shape {
    var cutoutX: CGFloat
    var cutoutWidth: CGFloat = 0
    var cutoutDepth: CGFloat = 0

    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height

        var path = Path()
        path.addRoundedRect(in: CGRect(x: 0, y: 0, width: width, height: height), cornerSize: .zero)

        let funnelPath = Path { p in
            let startX = cutoutX - cutoutWidth / 1
            let endX = cutoutX + cutoutWidth / 1
            let controlY = cutoutDepth

            p.move(to: CGPoint(x: startX, y: 0))
            p.addQuadCurve(to: CGPoint(x: cutoutX, y: controlY),
                           control: CGPoint(x: startX + 10, y: controlY / 5))
            p.addQuadCurve(to: CGPoint(x: endX, y: 0),
                           control: CGPoint(x: endX - 10, y: controlY / 5))
            p.closeSubpath()
        }

        return path.subtracting(funnelPath)
    }
}
