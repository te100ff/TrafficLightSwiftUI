//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Stanislav Testov on 01.06.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var title = "START"
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    @State private var currentLight = CurrentLight.red
    
    
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 15) {
                ColorCircle(color: .red, opacity: redLight)
                ColorCircle(color: .yellow, opacity: yellowLight)
                ColorCircle(color: .green, opacity: greenLight)
                Spacer()
                LaunchButton(title: title, function: switchingLights)
                
            }.padding(.bottom, 50)
        }
    }
    
    private func switchingLights() {
        title = "NEXT"
        
        let opacityOn = 1.0
        let opacityOff = 0.3
        
        switch currentLight {
        case .red:
            redLight = opacityOn
            greenLight = opacityOff
            currentLight = .yellow
        case .yellow:
            redLight = opacityOff
            yellowLight = opacityOn
            currentLight = .green
        case .green:
            yellowLight = opacityOff
            greenLight = opacityOn
            currentLight = .red
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

