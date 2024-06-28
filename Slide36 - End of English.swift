//
//  Slide36.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide36: View {
    var body: some View {
        VStack(alignment: .center, spacing: 80) {
            Text("\"본문장 + 세부사항\"으로 차근차근 영어를 정복하자!")
                .font(.system(size: 60, weight: .bold))
            Image("Puzzle")
                .resizable()
                .scaledToFit()
                .frame(width: 800)
                .shadow(radius: 10)
        }
    }
}

#Preview {
    KBSContentWrapper {
        Slide36()
    } action: {
        
    }

}
