//
//  Slide29 - Main Sentence - Application.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide29: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "본문장 응용",
            "He works everyday.",
            "그는 매일 일합니다.",
            "She studies at home two hours a day.",
            "그녀는 매일 2시간씩 집에서 공부합니다.",
            "Jane cooks pretty well.",
            "제인은 꽤 요리를 잘합니다.",
            "He exercises by himself at home two hours a day.",
            "그는 집에서 혼자 매일 2시간씩 운동합니다.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide29()
    } action: {
        
    }

}
