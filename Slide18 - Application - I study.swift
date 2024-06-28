//
//  Slide18.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide18: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "\"I STUDY\" 응용 1",
            "I study mainly with books.",
            "나는 주로 책으로 공부해요.",
            "I study mainly with YouTube videos.",
            "나는 주로 유튜브 영상으로 공부합니다.",
            "I study at home.",
            "나는 집에서 공부합니다.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide18()
    } action: {
        
    }

}
