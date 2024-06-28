//
//  Slide28.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide38: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "독일어 인사 1",
            "Guten Tag (궅은 탁 - 점심)",
            "직역하면 “좋은 하루되세요” 입니다. “안녕하세요”로 생각하면 됩니다.",
            "Guten Morgen (궅은 몰겐)",
            "좋은 아침입니다. (아침인사)",
            "Guten Abend (궅은 아벤트)",
            "안녕하세요. (저녁인사)",
            "Hallo (할로)",
            "안녕 (친한 사이에서)",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide38()
    } action: {
        
    }

}
