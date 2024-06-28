//
//  KBSContentWrapper.swift
//  My App
//
//  Created by Seungsub Oh on 6/28/24.
//

import SwiftUI

struct KBSContentWrapper<Content: View>: View {
    @Environment(\.dismiss) var dismiss
    
    @ViewBuilder let content: () -> Content
    let action: () -> Void
    
    @State private var scale = 0.8
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                TopBarView()
                GeometryReader { proxy in
                    content()
                        .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
                }
            }
            .frame(width: proxy.size.width, height: proxy.size.height, alignment: .top)
            .background {
                BackgroundView()
            }
            .contentShape(Rectangle())
            .overlay {
                navigationButton
            }
        }
        .scaleEffect(scale)
        .onAppear {
            withAnimation(.bouncy) {
                scale = 1
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    var navigationButton: some View {
        HStack {
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "chevron.left")
            })
            Spacer()
            Button(action: action, label: {
                Image(systemName: "chevron.right")
            })
        }
        .font(.system(size: 80))
        .opacity(0.5)
        .padding()
    }
}

#Preview {
    KBSContentWrapper {
        Text("Test View")
    } action: {
        
    }

}
