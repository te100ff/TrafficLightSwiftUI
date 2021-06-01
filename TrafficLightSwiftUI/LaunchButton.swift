//
//  Button.swift
//  TrafficLightSwiftUI
//
//  Created by Stanislav Testov on 01.06.2021.
//

import SwiftUI

struct LaunchButton: View {
    let title: String
    var function: () -> Void
    
    var body: some View {
        
        Button(action: { function() }, label: {
            Text(title)
                .font(.title)
                .bold()
        })
        .foregroundColor(.white)
        .frame(width: 250, height: 60)
        .background(Color(.systemBlue))
        .cornerRadius(15)
        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))
        
    }
}

struct Button_Previews: PreviewProvider {
    
    static var previews: some View {
        ZStack {
            Color(.black)
            // LaunchButton(title: "START", function: )
        }
    }
    
    
}
