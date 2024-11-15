//
//  Slide49 - Singing and Language.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide49: View {
    var body: some View {
        VStack {
            AnimatedMainTitle(fontSize: 100, title: "노래는 언어 습득의 지름길")
            Button("YouTube 링크 열기", action: openLink)
                .font(.system(size: 60))
        }
    }
    
    func openLink() {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=fvPO7Szxk7Y")!)
    }
}

#Preview {
    KBSContentWrapper {
        Slide49()
    } action: {
        
    }
}
