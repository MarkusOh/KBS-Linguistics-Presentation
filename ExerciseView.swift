//
//  ExerciseView.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct ExerciseView: View {
    let contents: [String]
    
    var body: some View {
        VStack(alignment: .leading) {
            let enumeratedContents = Array(contents.enumerated())
            ForEach(enumeratedContents, id: \.offset) { (index, content) in
                if index == 0 {
                    Text(content)
                        .font(.system(size: 65, weight: .black))
                        .opacity(1)
                        .padding(.bottom)
                } else {
                    HStack(alignment: .firstTextBaseline) {
                        if content.contains(":") {
                            let leading = " - "
                                .appending(content.components(separatedBy: ":").first!)
                                .appending(":")
                            Text(leading)
                        } else {
                            Text(" - ")
                        }
                        
                        Text(content.components(separatedBy: ":").last!)
                    }
                }
            }
            .font(.system(size: 55, weight: .bold))
            .opacity(0.8)
        }
    }
}

#Preview {
    KBSContentWrapper {
        ExerciseView(contents: [
            "지금, 나에게 맞는 공부 방법을 생각해보고, 계획을 세워보아요.",
            "계획: 지하철에서 아이패드 미니를 들고 Spanish Everyday 책 1 챕터를 읽는다.",
            "나의 단점: (현실 직시) 책 읽는 속도가 떨어진다. 졸음이 많다.",
            "단점을 극복할 수 있는 방법1: 책 읽는 속도가 점차 느려지는 것을 방지하기 위해 TTS 기능을 사용해 소리를 들으면서 눈을 움직인다.",
            "단점을 극복할 수 있는 방법2: 아이패드 미니를 들고 걸어다니면서 공부한다.",
        ])
    } action: {
        
    }

}
