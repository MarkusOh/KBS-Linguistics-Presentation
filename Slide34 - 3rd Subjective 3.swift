//
//  Slide34.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide34: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "삼인칭 주어 단수 3",
            "He doesn't work.",
            "그는 일하지 않습니다.",
            "She doesn't study.",
            "그녀는 공부하지 않습니다.",
            "Jane doesn't cook.",
            "제인은 요리 요리하지 않습니다.",
            "He works.",
            "그는 일합니다.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide34()
    } action: {
        
    }

}
