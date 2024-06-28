//
//  Slide25 - Retrospect.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide25: View {
    let contents = [
        "Everyday - 매일",
        "on weekends - 주말마다",
        "in an office - 사무실에서",
        "mainly with books - 주로 책으로",
        "mainly with YouTube videos - 주로 유튜브 영상으로",
        "by myself - 나 혼자",
        "at home - 집에서",
        "six hours a day - 하루 6시간 동안",
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("어떤 세부사항들이 있었지?")
            
            ForEach(contents, id: \.self) { content in
                HStack(alignment: .firstTextBaseline, spacing: .zero) {
                    let separation = content.components(separatedBy: " - ")
                    let english = separation.first!
                    let korean = separation.last!
                    
                    Text(english.appending(" "))
                        .bold()
                    
                    Image(systemName: "arrowshape.right")
                    
                    Text(" ".appending(korean))
                        .bold()
                }
            }
        }
        .padding(.horizontal)
        .font(.system(size: 60))
    }
}

#Preview {
    KBSContentWrapper {
        Slide25()
    } action: {
        
    }
}
