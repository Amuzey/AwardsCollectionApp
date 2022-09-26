//
//  CustomView.swift
//  AwardsCollectionApp
//
//  Created by Алексей on 26.09.2022.
//

import SwiftUI

struct CustomView: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 46, y: 55.5))
                path.addQuadCurve(
                    to: CGPoint(x: 145.3, y: 46.6),
                    control: CGPoint(x: 80, y: 0)
                )
            }
            .fill(.green)
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: 100, y: 100),
                    radius: 70,
                    startAngle: .degrees(220),
                    endAngle: .degrees(-50),
                    clockwise: true
                )
            }
            .fill(.green)
        
            Path { path in
                path.move(to: CGPoint(x: 75, y: 150))
                path.addQuadCurve(
                    to: CGPoint(x: 130, y: 145),
                    control: CGPoint(x: 96, y: 90)
                )
            }
            .fill(.black)
            
            Path { path in
                path.move(to: CGPoint(x: 75, y: 150))
                path.addQuadCurve(
                    to: CGPoint(x: 88, y: 150),
                    control: CGPoint(x: 85, y: 125)
                )
                path.addQuadCurve(
                    to: CGPoint(x: 101, y: 148),
                    control: CGPoint(x: 95, y: 125)
                )
                path.addQuadCurve(
                    to: CGPoint(x: 114, y: 147),
                    control: CGPoint(x: 105, y: 125)
                )
                path.addQuadCurve(
                    to: CGPoint(x: 130, y: 145),
                    control: CGPoint(x: 115, y: 125)
                )
            }
            .fill(.white)
            
            Circle()
                .stroke(.green, lineWidth: 10)
                .frame(width: 105)
            
            Circle()
                .frame(width: 65)
                .foregroundColor(.white)
                .offset(x: -7, y: -30)
            Circle()
                .frame(width: 45)
                .foregroundColor(.mint)
                .offset(x: -7, y: -30)
            Circle()
                .frame(width: 30)
                .foregroundColor(.black)
                .offset(x: -7, y: -30)
            Circle()
                .frame(width: 5)
                .foregroundColor(.white)
                .offset(x: -15, y: -33)
        }
    }
}
struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
            .frame(width: 200, height: 200)
    }
}