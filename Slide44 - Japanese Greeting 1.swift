//
//  Slide44 - Japanese Greeting 1.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide44: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "일본어 인사",
            "おはよう ございます。 (오하요 고자이마스)",
            "아침 인사",
            "こんにちは。 (곤니치와)",
            "낮 인사",
            "おあいできて うれしいです。 (오아이데키테 우레시이데스)",
            "만나서 기쁩니다",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide44()
    } action: {
        
    }

}
