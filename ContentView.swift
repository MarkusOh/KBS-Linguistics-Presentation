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
    ]
    let number: Int
}

struct ContentView: View {
    @State private var paths: [Slide] = .init()
    
    var body: some View {
        basicSetup
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
        NavigationStack(path: $paths) {
            main.navigationDestination(for: Slide.self) { slide in
                KBSContentWrapper(content: {
                    Slide.slides[slide.number, default: AnyView(Text("Empty"))]
                }, action: moveToNewSlide)
            }
        }
    }
    
    func moveToNewSlide() {
        paths.append(.init(number: paths.count + 1))
    }
}
