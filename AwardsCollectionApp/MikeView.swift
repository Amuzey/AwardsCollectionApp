//
//  MikeView.swift
//  AwardsCollectionApp
//
//  Created by Алексей on 26.09.2022.
//

import SwiftUI

struct MikeView: View {
    
    @Binding var start: Bool
    
    var body: some View {
        ZStack {
            BodyView()
            MouthView()
            LeftHandView()
            RightHandView(start: $start)
            LeftLegView()
            RightLegView()
            EyeView()
            EarsView()
        }
    }
}

struct MikeView_Previews: PreviewProvider {
    static var previews: some View {
        MikeView(start: .constant(true))
            .frame(width: 200, height: 200)
    }
}

struct EyeView: View {
    var body: some View {
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

struct MouthView: View {
    var body: some View {
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
    }
}

struct LeftHandView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 30, y: 99))
            path.addLine(to: CGPoint(x: 20, y: 145))
            path.addLine(to: CGPoint(x: 20, y: 170))
        }
        .stroke(.green, lineWidth: 5)
        
        Circle()
            .frame(width: 10)
            .offset(x: -67.5)
            .foregroundColor(.green)
        Circle()
            .frame(width: 10)
            .offset(x: -80, y: 70)
            .foregroundColor(.green)
    }
}

struct RightHandView: View {
    @Binding var start: Bool
    
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 170, y: 90))
            path.addLine(to: CGPoint(x: start ? 200 : 180, y: 45))
            path.addLine(to: CGPoint(x: start ? 210 : 170, y: 20))
        }
        .stroke(.green, lineWidth: 5)
        
        Circle()
            .frame(width: 10)
            .offset(x: 67.5, y: -10)
            .foregroundColor(.green)
        Circle()
            .frame(width: 10)
            .offset(x: start ? 110 : 70, y: -81)
            .foregroundColor(.green)
    }
}

struct LeftLegView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 80, y: 160))
            path.addLine(to: CGPoint(x: 75, y: 180))
            path.addLine(to: CGPoint(x: 75, y: 195))
        }
        .stroke(.green, lineWidth: 5)
        
        Path { path in
            path.move(to: CGPoint(x: 77, y: 195))
            path.addQuadCurve(to: CGPoint(x: 55, y: 195), control: CGPoint(x: 55, y: 180))
        }
        .fill(.green)
    }
}
struct RightLegView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 120, y: 160))
            path.addLine(to: CGPoint(x: 125, y: 180))
            path.addLine(to: CGPoint(x: 125, y: 195))
        }
        .stroke(.green, lineWidth: 5)
        
        Path { path in
            path.move(to: CGPoint(x: 123, y: 195))
            path.addQuadCurve(to: CGPoint(x: 145, y: 195), control: CGPoint(x: 145, y: 180))
        }
        .fill(.green)
    }
}

struct BodyView: View {
    var body: some View {
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
    }
}

struct EarsView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 50, y: 50))
            path.addLine(to: CGPoint(x: 50, y: 30))
            path.addLine(to: CGPoint(x: 65, y: 35))
        }
        .fill(.green)
        
        Path { path in
            path.move(to: CGPoint(x: 115, y: 30))
            path.addLine(to: CGPoint(x: 125, y: 20))
            path.addLine(to: CGPoint(x: 132, y: 38))
        }
        .fill(.green)
    }
}
