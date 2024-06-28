import SwiftUI

struct BackgroundView: View {
    let kbsLogo = UIImage(named: "KBS_Logo")!
    
    var body: some View {
        center
    }
    
    var center: some View {
        GeometryReader { proxy in
            Image(uiImage: kbsLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400)
                .opacity(0.2)
                .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
        }
    }
}

#Preview {
    BackgroundView()
}
