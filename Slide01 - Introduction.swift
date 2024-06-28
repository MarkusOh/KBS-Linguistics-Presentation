import SwiftUI

struct Slide01: View {
    let details = [
        "문화예술마스터 교수",
        "최고위 강사 1급 자격증 보유",
        "토익 980 / 토플 105점으로 대한민국 상위 1% 점수 보유",
        "국제 행사 번역 / 통역관",
        "(운현궁 전체 가이드 번역 · 국제 행사 EPEX 통역관 ···)",
        "앱 개발자 (iOS / Flutter / AdTech",
        "테크랩스 재직 (아만다 · 너랑나랑 데이트 앱 서비스 중)",
        "해커톤 앱 개발 대상 수상자",
        "광고 SDK 및 앱 개발 Top Contributor (AdTech)",
        "대한민국 봉사 대상 수상자",
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("오승섭")
                .font(.system(size: 80, weight: .black))
            
            ForEach(details, id: \.self) { detail in
                Text("· \(detail)")
            }
            .font(.system(size: 60, weight: .bold))
            .opacity(0.8)
            
            Spacer()
        }
    }
}

#Preview {
    KBSContentWrapper {
        Slide01()
    } action: {
        
    }

}
