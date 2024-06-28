//
//  Slide05.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide05: View {
    var body: some View {
        VStack(spacing: .zero) {
            Text("\"사람마다 백이면 백 다 방법이 달랐습니다\"")
                .font(.system(size: 80, weight: .bold))
                .offset(y: 25)
            Image("DiversePeopleProfile")
                .resizable()
                .scaledToFill()
                .zIndex(.infinity)
        }
    }
}

#Preview {
    KBSContentWrapper {
        Slide05()
    } action: {
        
    }

}
