//
//  Slide26 - Retrospect.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide26: View {
    let contents = [
        "I do",
        "You do",
        "He does",
        "She does",
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("문법 조금만 🤌")
                
                ForEach(contents, id: \.self) { content in
                    if content.contains("does") {
                        Text(content.prefix(content.count - 1)).bold() +
                        Text("s").bold().foregroundStyle(.red)
                    } else {
                        Text(content)
                            .bold()
                    }
                }
            }
            .padding(.horizontal, 50)
            .font(.system(size: 100))
            
            Spacer()
        }
    }
}

#Preview {
    KBSContentWrapper {
        Slide26()
    } action: {
        
    }
}
