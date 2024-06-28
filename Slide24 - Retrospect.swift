//
//  Slide24 - Retrospect.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide24: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            Text("방금 뭘 배웠지...?")
            
            Text("I work (본문장)\neveryday (세부사항)")
                .bold()
            
            Text("\"") + 
            Text("본문장").fontWeight(.black) +
            Text("+").fontWeight(.semibold) +
            Text("세부사항").fontWeight(.black) +
            Text("\"으로 표현하는구나!")
        }
        .font(.system(size: 80))
    }
}

#Preview {
    KBSContentWrapper {
        Slide24()
    } action: {
        
    }
}
