//
//  Slide07.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide07: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("IndexFinger")
                    .resizable()
                    .scaledToFit()
                Image("TVShow")
                    .resizable()
                    .scaledToFit()
            }
            .shadow(radius: 10)
            Text("미국 시트콤 How I Met Your Mother")
                .font(.system(size: 70, weight: .bold))
                .padding(.horizontal)
        }
    }
}

#Preview {
    KBSContentWrapper {
        Slide07()
    } action: {
        
    }

}
