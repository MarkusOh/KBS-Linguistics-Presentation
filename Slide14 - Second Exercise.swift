//
//  Slide14.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct Slide14: View {
    var body: some View {
        ExerciseView(contents: [
            "지금, 언어가 내 삶에 정착하기 위한 좋은 수단을 생각해보아요",
            "로맨틱 코미디 영화 / 슈렉과 같은 애니메이션을 좋아하기 때문에, 애니메이션 및 영화를 한국어 자막이 있는 버전을 보고, 영어 자막이 있는 버전으로 본 후, 익숙해질 때 즈음 완전히 자막이 없는 순수 영어 히어링으로 영화를 본다. 해당 일과는 회사에서 점심 먹고 10분 정도 한다.",
        ])
    }
}

#Preview {
    KBSContentWrapper {
        Slide14()
    } action: {
        
    }
}
