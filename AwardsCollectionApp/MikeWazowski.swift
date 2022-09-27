//
//  MikeWazowski.swift
//  AwardsCollectionApp
//
//  Created by Алексей on 27.09.2022.
//

import SwiftUI

struct MikeWazowski: View {
    
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text("Hey")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 180, height: 50)
                    .background(Color.blue)
                    .cornerRadius(15)
                
            }
            Spacer()
            
            if awardIsShowing {
                MikeView()
                    .frame(width: 200, height: 200)
                    .transition(.bounceAnimation)
            }
        }
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

struct MikeWazowski_Previews: PreviewProvider {
    static var previews: some View {
        MikeWazowski()
    }
}

extension AnyTransition {
    static var bounceAnimation: AnyTransition {
        let insertion = AnyTransition.move(edge: .top)
        let removal = AnyTransition.move(edge: .bottom)
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

