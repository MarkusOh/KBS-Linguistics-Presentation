//
//  Slide41.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide41: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "스페인어 인사",
            "Hola",
            "안녕하세요",
            "Buenas",
            "안녕",
            "Buenos dias",
            "좋은 아침",
            "Buenas tardes",
            "점심과 저녁 때 인사",
            "Buenas noches",
            "밤 및 새벽 인사",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide41()
    } action: {
        
    }

}
