import SwiftUI

struct Slide: Hashable {
    static var slides: [Int: AnyView] = [
        1: AnyView(Slide01()),
        2: AnyView(Slide02()),
        3: AnyView(Slide03()),
        4: AnyView(Slide04()),
        5: AnyView(Slide05()),
        6: AnyView(Slide06()),
        7: AnyView(Slide07()),
        8: AnyView(Slide08()),
        9: AnyView(Slide09()),
        10: AnyView(Slide10()),
        11: AnyView(Slide11()),
        12: AnyView(Slide12()),
        13: AnyView(Slide13()),
        14: AnyView(Slide14()),
        15: AnyView(Slide15()),
        16: AnyView(Slide16()),
        17: AnyView(Slide17()),
        18: AnyView(Slide18()),
        19: AnyView(Slide19()),
        20: AnyView(Slide20()),
        21: AnyView(Slide21()),
        22: AnyView(Slide22()),
        23: AnyView(Slide23()),
        24: AnyView(Slide24()),
        25: AnyView(Slide25()),
        26: AnyView(Slide26()),
        27: AnyView(Slide27()),
        28: AnyView(Slide28()),
        29: AnyView(Slide29()),
        30: AnyView(Slide30()),
        31: AnyView(Slide31()),
        32: AnyView(Slide32()),
        33: AnyView(Slide33()),
        34: AnyView(Slide34()),
        35: AnyView(Slide35()),
        36: AnyView(Slide36()),
        37: AnyView(Slide37()),
        38: AnyView(Slide38()),
        39: AnyView(Slide39()),
        40: AnyView(Slide40()),
        41: AnyView(Slide41()),
        42: AnyView(Slide42()),
        43: AnyView(Slide43()),
        44: AnyView(Slide44()),
        45: AnyView(Slide45()),
        46: AnyView(Slide46()),
        47: AnyView(Slide47()),
        48: AnyView(Slide48()),
        49: AnyView(Slide49()),
        50: AnyView(Slide50()),
    ]
    let number: Int
}

struct KeyPressDetector: UIViewControllerRepresentable {
    class CustomVC: UIViewController {
        var action: ((UIKey) -> Void)?
        
        override func pressesBegan(
            _ presses: Set<UIPress>,
            with event: UIPressesEvent?
        ) {
            guard let key = presses.first?.key else {
                return
            }
            
            action?(key)
        }
    }
    
    let action: (UIKey) -> Void
    
    func makeUIViewController(
        context: Context
    ) -> CustomVC {
        CustomVC()
    }
    
    func updateUIViewController(
        _ uiViewController: CustomVC,
        context: Context
    ) {
        uiViewController.action = action
    }
    
    func sizeThatFits(
        _ proposal: ProposedViewSize,
        uiViewController: CustomVC,
        context: Context
    ) -> CGSize? {
        .init(width: 0, height: 0)
    }
}

struct ContentView: View {
    @State private var paths: [Slide] = .init()
    
    var body: some View {
        basicSetup
            .overlay {
                KeyPressDetector { key in
                    switch key.keyCode {
                    case .keyboardLeftArrow:
                        moveBack()
                    case .keyboardRightArrow:
                        moveToNewSlide()
                    case .keyboardDownArrow:
                        paths = []
                    case .keyboardUpArrow:
                        paths = Slide
                            .slides
                            .map({ $0.key })
                            .sorted()
                            .map({ Slide(number: $0) })
                    default: ()
                    }
                }
            }
    }
    
    var mainTitle: some View {
        AnimatedMainTitle()
    }
    
    var main: some View {
        KBSContentWrapper(content: {
            mainTitle
        }, action: moveToNewSlide)
    }
    
    var basicSetup: some View {
        GeometryReader { proxy in
            NavigationStack(path: $paths) {
                main.navigationDestination(for: Slide.self) { slide in
                    KBSContentWrapper(content: {
                        Slide.slides[slide.number, default: AnyView(Text("Empty"))]
                    }, action: moveToNewSlide)
                }
            }
            .frame(width: 1366, height: 1024)
            .scaleEffect(
                proxy.size.height / 1024,
                anchor: .center
            )
            .frame(
                width: proxy.size.width,
                height: proxy.size.height,
                alignment: .center
            )
        }
        .background {
            Color.black
        }
    }
    
    func moveToNewSlide() {
        paths.append(.init(number: paths.count + 1))
    }
    
    func moveBack() {
        guard paths.isEmpty == false else {
            return
        }
        
        paths.removeLast()
    }
}
