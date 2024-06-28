//
//  Slide17.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide17: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "\"I WORK\" 응용",
            "I work everyday.",
            "저는 매일 일을 합니다.",
            "I work on weekends.",
            "저는 주말에 일합니다.",
            "I work in an office.",
            "나는 사무실에서 일해요.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide17()
    } action: {
        
    }

}
