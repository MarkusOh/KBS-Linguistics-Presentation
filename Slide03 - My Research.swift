import SwiftUI

struct Slide03: View {
    var body: some View {
        VStack(spacing: .zero) {
            Spacer()
            Image("DiversePeople")
                .resizable()
                .scaledToFit()
                .padding(.horizontal)
                .shadow(radius: 10)
        }
    }
}

#Preview {
    KBSContentWrapper {
        Slide03()
    } action: {
        
    }

}
