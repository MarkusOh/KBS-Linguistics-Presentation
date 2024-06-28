//
//  Slide33.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide33: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "삼인칭 주어 단수 2",
            "He works → He doesn't work",
            "She studies → She doesn't study",
            "Jane cooks → Jane doesn't cook",
            "David exercises → David doesn't exercise",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide33()
    } action: {
        
    }

}
