//
//  Slide27.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide27: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "본문장 He / She WORKS",
            "He works.",
            "그는 일합니다.",
            "She works.",
            "그녀는 일합니다.",
            "Jane works.",
            "제인은 일합니다.",
            "William works.",
            "윌리엄은 일합니다.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide27()
    } action: {
        
    }

}
