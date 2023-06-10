//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Sergei Bakhmatov on 10.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LightView(lightAlpha: 0.5, lightColor: .red)
            LightView(lightAlpha: 0.5, lightColor: .yellow)
            LightView(lightAlpha: 0.5, lightColor: .green)
            
            Spacer()
            
            ZStack {
                Capsule()
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 60)
                    .overlay(Capsule().stroke(Color.black, lineWidth: 4))
                Button(action: buttonPressed) {
                    Text("START")
                        .frame(width: 140, height: 50)
                        .font(.title)
                        .foregroundColor(.white)
                        
                }
            }
        }
        
        .padding()
    }
}

private func buttonPressed() {
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
