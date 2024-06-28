//
//  KeywordView.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct KeywordView: View {
    let imageName: String
    let keyword: String
    
    @State private var size = 1.5
    
    var body: some View {
        HStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 500, height: 500)
            Spacer()
        }
        .overlay {
            Text(keyword)
                .font(.system(size: 225, weight: .bold))
                .scaleEffect(size)
                .foregroundStyle(.white)
                .shadow(radius: 30)
                .shadow(radius: 30)
        }
        .onAppear {
            guard size != 0.8 else {
                return
            }
            
            withAnimation {
                size = 0.8
            }
        }
    }
}

#Preview {
    KBSContentWrapper {
        KeywordView(imageName: "Iteration", keyword: "반복")
    } action: {
        
    }

}
