//
//  Slide12.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide12: View {
    struct Person: View {
        let imageName: String
        let name: String
        
        @State private var show = false
        
        var body: some View {
            VStack(spacing: 10) {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 10)
                    .zIndex(.infinity)
                
                if show {
                    Text(name)
                        .font(.system(size: 70, weight: .bold))
                        .opacity(0.8)
                }
            }
            .onAppear {
                withAnimation {
                    show = true
                }
            }
        }
    }
    
    var body: some View {
        HStack(alignment: .bottom) {
            Person(imageName: "BennyLewis", name: "Benny Lewis")
            Person(imageName: "LucaLampariello", name: "Luca Lampariello")
        }
    }
}

#Preview {
    KBSContentWrapper {
        Slide12()
    } action: {
        
    }

}
