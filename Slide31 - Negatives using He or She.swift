//
//  Slide31.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide31: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "She / He 사용 부정문",
            "She doesn't work.",
            "",
            "He doesn't study.",
            "",
            "Jane doesn't cook.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide31()
    } action: {
        
    }

}
