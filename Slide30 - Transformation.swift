//
//  Slide30.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide30: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "본문 → 부정문 → 부정문 + 세부사항\n→ He / She 로 주어 변경",
            "I work → I don’t work",
            "나는 일해 → 나 일 안해",
            "I don’t work → I don’t work on weekends",
            "나 일 안해 → 나 주말에 일 안해",
            "I don’t work on weekends → \nShe doesn’t work on weekends",
            "나 주말에 일 안해 → 그녀는 주말에 일 안해"
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide30()
    } action: {
        
    }

}
