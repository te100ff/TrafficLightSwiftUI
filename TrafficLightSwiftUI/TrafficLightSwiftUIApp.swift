//
//  TrafficLightSwiftUIApp.swift
//  TrafficLightSwiftUI
//
//  Created by Stanislav Testov on 01.06.2021.
//

import SwiftUI

@main
struct TrafficLightSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(redLight: 0.3, yellowLight: 0.3, greenLight: 0.3)
        }
    }
}
