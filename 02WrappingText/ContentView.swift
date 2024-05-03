//
//  ContentView.swift
//  02WrappingText
//
//  Created by Aleksandr Menshikov on 03.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State var size: CGFloat = 300
    var body: some View {
        VStack {
            VStack {
                Text("Марафон\u{00A0}").foregroundStyle(.secondary) + Text("по SwiftUI")
                
                Text("«Отцовский Пинок»")
                    .font(.title)
                    .foregroundStyle(.blue)
            }
            .padding(.vertical, 16)
            .frame(width: size, height: 200)
            .border(Color.red)
            
            Slider(value: $size, in: 100...300)
                .padding(.horizontal, 16)
        }
    }
}

#Preview {
    ContentView()
}
