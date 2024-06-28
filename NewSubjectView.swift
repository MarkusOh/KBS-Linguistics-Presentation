//
//  NewSubjectView.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI
import Combine

struct NewSubjectView: View {
    let title: String
    let systemImage: String
    @State private var x: Double = 0
    @State private var y: Double = 0
    @State private var theta: Double = 0
    @State private var animate = false
    @State private var sync = PassthroughSubject<Void, Never>()
    
    var body: some View {
        GeometryReader { proxy in
            Text(title)
                .font(.system(size: 130, weight: .bold))
                .frame(width: proxy.size.width, height: proxy.size.height, alignment: .leading)
        }
        .background(alignment: .trailing) {
            Image(systemName: systemImage)
                .font(.system(size: 800, weight: .ultraLight))
                .opacity(0.1)
                .rotation3DEffect(
                    .degrees(x * 10),
                    axis: (x: 0, y: 1, z: 0),
                    anchor: .center,
                    perspective: 5
                )
                .rotation3DEffect(
                    .degrees(y * 10),
                    axis: (x: 1, y: 0, z: 0),
                    anchor: .center,
                    perspective: 5
                )
                .offset(x: 150, y: 50)
        }
        .padding(.leading, 50)
        .padding(.bottom, 100)
        .onReceive(sync) { _ in
            withAnimation(.linear(duration: 0.5)) {
                theta = (theta + (.pi / 24))
                    .truncatingRemainder(dividingBy: (.pi * 2))
                x = cos(theta)
                y = sin(theta)
            }
        }
        .task {
            animate = true
            
            while animate {
                sync.send()
                
                do {
                    try await Task.sleep(for: .milliseconds(500))
                } catch {
                    return
                }
            }
        }
        .onDisappear {
            animate = false
        }
    }
}

#Preview {
    KBSContentWrapper {
        NewSubjectView(title: "Good stuff", systemImage: "globe")
    } action: {
        
    }

}
