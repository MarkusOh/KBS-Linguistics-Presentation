//
//  Slide32.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide32: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "삼인칭 주어 단수 1",
            "I work → He works",
            "",
            "I study → She studies",
            "",
            "I cook → Jane cooks",
            "",
            "I exercise → David exercises",
            "",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide32()
    } action: {
        
    }

}
