//
//  Slide20 - Application 2 - I study.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide20: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "\"I STUDY\" 응용 2",
            "I study six hours a day.",
            "나는 매일 6시간 공부합니다.",
            "I study six hours a day at home.",
            "나는 집에서 하루 6시간 동안 공부한다.",
            "I study on weekends.",
            "나는 주말에 공부합니다.",
            "I study six hours a day at home mainly with YouTube videos.",
            "나는 집에서 유튜브 영상을 주로 보면서 하루에 6시간 동안 공부합니다.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide20()
    } action: {
        
    }

}
