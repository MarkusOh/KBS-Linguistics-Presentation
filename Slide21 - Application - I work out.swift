//
//  File.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide21: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "\"I WORK OUT / I EXERCISE\" 응용1",
            "I work out. / I exercise.",
            "저는 운동합니다.",
            "I work out by myself / I exercise by myself.",
            "저는 혼자서 운동합니다.",
            "I work out on weekends.",
            "저는 주말에 운동합니다.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide21()
    } action: {
        
    }

}
