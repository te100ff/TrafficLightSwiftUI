//
//  Color Сшксду.swift
//  TrafficLightSwiftUI
//
//  Created by Stanislav Testov on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
            Circle()
                .foregroundColor(color)
                .frame(width: 100, height: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .opacity(opacity)
        }
    }


struct ColorCirclePreviews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
            ColorCircle(color: .blue, opacity: 1)
        }
    }
}
