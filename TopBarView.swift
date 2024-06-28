import SwiftUI

struct TopBarView: View {
    let kbsCurriculumLogo = UIImage(named: "KBS_Curriculum_Logo")!
    let kbsFlow = UIImage(named: "KBS_Flow")!
    
    var body: some View {
        topBar
    }
    
    var topBar: some View {
        HStack {
            Image(uiImage: kbsCurriculumLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 80)
                .padding()
            Spacer()
        }
        .padding(.bottom, 70)
        .background(alignment: .bottom) {
            GeometryReader { proxy in
                Image(uiImage: kbsFlow)
                    .resizable()
                    .frame(width: proxy.size.width, height: 90)
                    .frame(height: proxy.size.height, alignment: .bottom)
            }
        }
    }
}

#Preview {
    TopBarView()
}
