//
//  Slide39.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide39: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "독일어 인사 2",
            "Auf Wiedersehen (아웁비더젠)",
            "안녕히 계세요 / 안녕히 가세요 (높은 분에게)",
            "Tschüss (츄쓰)",
            "잘가 (친한 사이에서)",
            "Bis morgen / Bis bald (비스 몰겐 / 비스 발트)",
            "내일 봐(요). 이따 봐(요)",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide39()
    } action: {
        
    }

}
