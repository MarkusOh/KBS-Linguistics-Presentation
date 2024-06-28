import SwiftUI
import Combine

struct Slide06: View {
    @State private var sync = PassthroughSubject<Int, Never>()
    @State private var animate = false
    @State private var animateIndex = 0
    @State private var sizes = [0.9, 0.9, 0.9]
    
    var body: some View {
        HStack {
            Image("Methods - Recipe")
                .resizable()
                .scaleEffect(sizes[0])
                .scaledToFit()
                .padding(50)
                .rotationEffect(.degrees(-20))
                .onReceive(sync) { index in
                    if index == 0 {
                        Task {
                            sizes[index] = 1
                            do {
                                try await Task.sleep(for: .milliseconds(200))
                            } catch {
                                return
                            }
                            sizes[index] = 0.9
                        }
                    }
                }
            Image("Methods - Duolingo")
                .resizable()
                .scaleEffect(1.3)
                .scaleEffect(sizes[1])
                .scaledToFit()
                .padding(.horizontal)
                .offset(x: -20, y: -20)
                .onReceive(sync) { index in
                    if index == 1 {
                        Task {
                            sizes[index] = 1
                            do {
                                try await Task.sleep(for: .milliseconds(200))
                            } catch {
                                return
                            }
                            sizes[index] = 0.9
                        }
                    }
                }
            Image("Methods - Posters on Wall")
                .resizable()
                .scaleEffect(1.2)
                .scaleEffect(sizes[2])
                .scaledToFit()
                .padding(.horizontal)
                .onReceive(sync) { index in
                    if index == 2 {
                        Task {
                            sizes[index] = 1
                            do {
                                try await Task.sleep(for: .milliseconds(200))
                            } catch {
                                return
                            }
                            sizes[index] = 0.9
                        }
                    }
                }
        }
        .padding(.horizontal)
        .shadow(radius: 10)
        .task {
            animate = true
            
            while animate {
                sync.send(animateIndex)
                animateIndex = (animateIndex + 1) % 3
                try? await Task.sleep(for: .milliseconds(1500))
            }
        }
        .onDisappear {
            animate = false
        }
        .animation(.default, value: sizes)
    }
}

#Preview {
    KBSContentWrapper {
        Slide06()
    } action: {
        
    }

}
