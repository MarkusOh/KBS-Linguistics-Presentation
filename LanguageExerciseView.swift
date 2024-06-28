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
            VStack(alignment: .leading, spacing: .zero) {
                ForEach(enumeratedContents, id: \.0) { (index, content) in
                    let important = index % 2 == 1
                    
                    if index == 0 {
                        Text(content)
                            .font(.system(size: 75, weight: .semibold))
                            .minimumScaleFactor(0.8)
                        Spacer(minLength: .zero)
                    } else {
                        Text(content)
                            .font(.system(size: 60, weight: important ? .bold : .regular))
                            .minimumScaleFactor(0.5)
                            .padding(.bottom, important ? nil : 25)
                    }
                }
                Spacer()
            }
            .frame(width: proxy.size.width, height: proxy.size.height, alignment: .leading)
        }
        .padding(.leading, 75)
    }
}

#Preview {
    KBSContentWrapper {
        LanguageExerciseView(contents: [
            "본문장",
            "I work",
            "저는 일을 합니다.",
            "I study",
            "저는 공부합니다."
        ])
    } action: {
        
    }

}
