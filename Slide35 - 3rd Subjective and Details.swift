//
//  Slide35.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "삼인칭 주어 단수 + 세부사항",
            "He works hard.",
            "그는 열심히 일합니다.",
            "He doesn't work hard.",
            "그는 열심히 일을 안 해요.",
            "She cooks pretty well.",
            "그녀는 요리를 꽤 잘해요.",
            "She cooks pretty well, but she doesn't cook everyday.",
            "그녀는 요리를 꽤 잘해요. 근데 매일 요리를 하지는 않습니다.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        MyView()
    } action: {
        
    }
}
