//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Sergei Bakhmatov on 10.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    var body: some View {
        VStack {
            LightView(lightAlpha: redLight, lightColor: .red)
            LightView(lightAlpha: yellowLight, lightColor: .yellow)
            LightView(lightAlpha: greenLight, lightColor: .green)
            
            Spacer()
            
            ZStack {
                Capsule()
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 60)
                    .overlay(Capsule().stroke(Color.black, lineWidth: 4))
                Button(action: buttonPressed) {
                    Text(buttonTitle)
                        .frame(width: 140, height: 50)
                        .font(.title.bold())
                        .foregroundColor(.white)
                }
            }
            
        }
        .padding()
    }
    
    private func buttonPressed() {
        
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch currentLight {
        case .red:
            greenLight = lightIsOff
            redLight = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight = lightIsOff
            yellowLight = lightIsOn
            currentLight = .green
        case .green:
            yellowLight = lightIsOff
            greenLight = lightIsOn
            currentLight = .red
        }
    }
    
}

extension ContentView {
    private enum CurrentLight {
        case red, yellow, green
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
