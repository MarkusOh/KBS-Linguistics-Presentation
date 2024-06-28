//
//  Slide45 - Japanese Greeting 2.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide45: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "일본어 인사",
            "わたしは たろうです。(와타시와 다로데스)",
            "저는 다로입니다",
            "きをつけて。(기오츠케테)",
            "조심히 가세요",
            "ありがとう ございます。(아리가토 고자이마스)",
            "감사합니다",
            "さようなら。(사요나라)",
            "안녕히 가세요",
            "またね。(마타네)",
            "또 만나",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide45()
    } action: {
        
    }

}
