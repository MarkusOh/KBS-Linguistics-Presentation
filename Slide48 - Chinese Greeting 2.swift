//
//  Slide48.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide48: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "중국어 인사2",
            "晚上好 - wǎnshàng hǎo",
            "Good evening (저녁 인사)",
            "早 - zǎo",
            "좋은 아침입니다",
            "喂 - wéi",
            "Hello? (전화를 받을 때 사용)",
            "你吃了吗 - nĭ chī le ma",
            "밥 먹었니? (인사를 대신해 사용하기도 함)",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide48()
    } action: {
        
    }
}
