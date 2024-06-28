//
//  Slide19.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide19: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "\"I COOK\" 응용",
            "I cook pretty well.",
            "난 요리를 꽤 잘합니다.",
            "I cook everyday.",
            "전 매일 요리해요.",
            "I cook almost everyday.",
            "전 거의 매일 요리해요.",
            "I cook once in a while.",
            "전 어쩌다가 한번씩 요리해요.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide19()
    } action: {
        
    }

}
