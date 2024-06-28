//
//  Slide16 - Main Sentence.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide16: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "본문장 (Main Sentence)",
            "I work.",
            "저는 일을 합니다.",
            "I study.",
            "저는 공부를 합니다.",
            "I cook.",
            "저는 요리를 합니다.",
            "I work out. / I exercise.",
            "저는 운동을 합니다.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide16()
    } action: {
        
    }

}
