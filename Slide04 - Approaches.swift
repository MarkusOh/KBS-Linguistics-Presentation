import SwiftUI

struct Slide04: View {
    var body: some View {
        HStack {
            Image("PhoneHolding")
                .resizable()
                .scaledToFit()
                .mask {
                    LinearGradient(colors: [.white, .white, .white, .white, .white, .clear], startPoint: .top, endPoint: .bottom)
                }
                .scaleEffect(1.2)
                .offset(x: 60)
            Image("DiverseLanguages")
                .resizable()
                .scaledToFit()
                .scaleEffect(1.5)
                .offset(x: -210)
                .shadow(radius: 10)
        }
        .offset(x: 50)
        .padding(.horizontal)
    }
}

#Preview {
    KBSContentWrapper {
        Slide04()
    } action: {
        
    }

}
