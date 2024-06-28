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
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 500, height: 500)
            .overlay {
                Text(keyword)
                    .font(.system(size: 180, weight: .bold))
                    .foregroundStyle(.white)
                    .shadow(radius: 30)
                    .shadow(radius: 30)
            }
    }
}

#Preview {
    KBSContentWrapper {
        KeywordView(imageName: "Iteration", keyword: "반복")
    } action: {
        
    }

}
