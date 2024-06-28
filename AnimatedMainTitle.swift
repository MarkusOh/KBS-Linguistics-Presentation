//
//  AnimatedMainTitle.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI
import Combine

struct AnimatedCharacter: View {
    let char: Character
    let index: Int
    let sync: PassthroughSubject<Void, Never>
    let fontSize: Double
    
    @State private var scale = 0.8
    
    @ViewBuilder var body: some View {
        if char.isWhitespace {
            Text("\(char)")
                .font(.system(size: fontSize, weight: .black))
        } else {
            Text("\(char)")
                .font(.system(size: fontSize, weight: .black))
                .scaleEffect(scale)
                .padding(scale == 0.8 ? -fontSize * 0.1 : 0)
                .onReceive(sync) {
                    Task {
                        await animate()
                    }
                }
        }
    }
    
    func animate() async {
        do {
            try await Task.sleep(for: .milliseconds((index + 1) * 100))
        } catch {
            return
        }
        withAnimation {
            scale = 1
        }
        do {
            try await Task.sleep(for: .milliseconds(300))
        } catch {
            return
        }
        withAnimation {
            scale = 0.8
        }
    }
}

struct AnimatedMainTitle: View {
    @State private var sync = PassthroughSubject<Void, Never>()
    @State private var shouldAnimate = false
    
    let fontSize: Double
    let title: String
    init(fontSize: Double = 200, title: String = "외국어 이해") {
        self.fontSize = fontSize
        self.title = title
    }
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: .zero) {
            ForEach(Array(title.map({ $0 }).enumerated()), id: \.offset) { (index, char) in
                let previousWhiteSpaceCount = title.prefix(upTo: title.index(title.startIndex, offsetBy: index + 1)).filter({ $0.isWhitespace }).count
                
                AnimatedCharacter(char: char, index: index - previousWhiteSpaceCount, sync: sync, fontSize: fontSize)
            }
        }
        .onDisappear {
            shouldAnimate = false
        }
        .task {
            shouldAnimate = true
            
            repeat {
                sync.send()
                do {
                    try await Task.sleep(for: .seconds(3))
                } catch {
                    return
                }
            } while shouldAnimate
        }
    }
}

#Preview {
    AnimatedMainTitle()
}
