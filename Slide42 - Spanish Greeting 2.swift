//
//  Slide42 - Spanish Greeting 2.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide42: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "스페인어 작별 인사",
            "Adios",
            "안녕히 가세요",
            "Nos vemos",
            "다음에 보자",
            "Hasta luego",
            "이따 보자",
            "Hasta pronto",
            "곧 보자",
            "Hasta mañana",
            "내일 보자",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide42()
    } action: {
        
    }

}
