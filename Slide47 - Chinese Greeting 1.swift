//
//  Slide47.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide47: View {
    var body: some View {
        LanguageExerciseView(contents: [
            "중국어 인사1",
            "你好 - nĭhǎo",
            "안녕",
            "您好 - nínhǎo",
            "안녕하세요 (정중)",
            "大家好 - dàjiā hǎo",
            "모두들 안녕하세요",
            "老师好 - lǎoshī hǎo",
            "선생님 안녕하세요",
            "下午好 - xiàwǔ hǎo",
            "Good Afternoon (오후 인사)",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide47()
    } action: {
        
    }

}
