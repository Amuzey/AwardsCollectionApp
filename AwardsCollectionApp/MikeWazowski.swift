//
//  MikeWazowski.swift
//  AwardsCollectionApp
//
//  Created by Алексей on 27.09.2022.
//

import SwiftUI

struct MikeWazowski: View {
    
    @State private var start = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text("Animation")
            }
            Spacer()
            MikeView(start: $start)
                .frame(width: 200, height: 200)
        }
        .padding()
    }
    
    private func buttonAction() {
        start.toggle()
    }
}

struct MikeWazowski_Previews: PreviewProvider {
    static var previews: some View {
        MikeWazowski()
    }
}
