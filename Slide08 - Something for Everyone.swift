//
//  Slide08 -.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct ScaledImageLook: ViewModifier {
    var animate: Bool
    
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .scaleEffect(animate ? 2.3 : 2.2)
            .transaction(value: animate) { transaction in
                transaction.animation = transaction.animation?.delay(Double.random(in: (1.0...3.0)))
            }
    }
}

struct Slide08: View {
    @State private var animate = false
    
    var body: some View {
        VStack {
            HStack {
                Image("BookStack")
                    .resizable()
                    .modifier(ScaledImageLook(animate: animate))
                Spacer()
                Image("iPhone")
                    .resizable()
                    .rotationEffect(.degrees(-10))
                    .modifier(ScaledImageLook(animate: animate))
                    .offset(y: -30)
            }
            
            HStack {
                Image("Fun")
                    .resizable()
                    .modifier(ScaledImageLook(animate: animate))
                    
                    .offset(x: 60)
            }
            
            HStack {
                Image("SelfReflection")
                    .resizable()
                    .modifier(ScaledImageLook(animate: animate))
                Spacer()
                Image("LadyTalkingOnPhone")
                    .resizable()
                    .modifier(ScaledImageLook(animate: animate))
            }
        }
        .padding(150)
        .shadow(radius: 10)
        .onAppear {
            withAnimation(.default.repeatForever()) {
                animate = true
            }
        }
    }
}

#Preview {
    KBSContentWrapper {
        Slide08()
    } action: {
        
    }

}
