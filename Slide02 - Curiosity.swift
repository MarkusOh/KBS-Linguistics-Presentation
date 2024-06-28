import SwiftUI

struct Slide02: View {
    var body: some View {
        HStack(spacing: .zero) {
            Image("How")
                .resizable()
                .scaledToFit()
            Image("Globe")
                .resizable()
                .scaledToFit()
        }
        .padding()
        .shadow(radius: 10)
    }
}

#Preview {
    Slide02()
}
