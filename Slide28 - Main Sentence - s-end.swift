//
//  Slide28 - Main Sentence - s-end.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide28: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "본문장",
            "He works.",
            "그는 일합니다.",
            "She studies.",
            "그녀는 공부합니다.",
            "Jane cooks.",
            "제인은 요리하고 있습니다.",
            "He exercises.",
            "그는 운동합니다.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide28()
    } action: {
        
    }

}
