//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Sergei Bakhmatov on 10.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        VStack(spacing: 20) {
            LightView(opacity: redLightState, color: .red)
            LightView(opacity: yellowLightState, color: .yellow)
            LightView(opacity: greenLightState, color: .green)
            
            Spacer()
            
            Button(action: buttonPressed) {
                Text(buttonTitle)
                    .frame(width: 140, height: 50)
                    .font(.title.bold())
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 60)
            .background(.gray)
            .cornerRadius(15)
        }
        
        .padding()
    }
    
    private func buttonPressed() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch currentLight {
        case .red:
            greenLightState = lightIsOff
            redLightState = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightState = lightIsOff
            yellowLightState = lightIsOn
            currentLight = .green
        case .green:
            yellowLightState = lightIsOff
            greenLightState = lightIsOn
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
