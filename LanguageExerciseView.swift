//
//  LanguageExerciseView.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct LanguageExerciseView: View {
    let contents: [String]
    
    var enumeratedContents: [(Int, String)] {
        Array(contents.enumerated())
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .leading, spacing: 20) {
                ForEach(enumeratedContents, id: \.0) { (index, content) in
                    if index == 0 {
                        Text(content)
                            .font(.system(size: 85, weight: .semibold))
                    } else {
                        Text(content)
                            .font(.system(size: 70, weight: index % 2 == 1 ? .bold : .regular))
                    }
                }
            }
            .frame(width: proxy.size.width, height: proxy.size.height, alignment: .leading)
        }
        .padding(.horizontal, 75)
    }
}

#Preview {
    KBSContentWrapper {
        LanguageExerciseView(contents: [
            "본문장",
            "I work",
            "저는 일을 합니다."
        ])
    } action: {
        
    }

}
