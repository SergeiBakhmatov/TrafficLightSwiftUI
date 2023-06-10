//
//  TrafficLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Sergei Bakhmatov on 10.06.2023.
//

import SwiftUI



struct LightView: View {
    
    let lightAlpha: Double
    let lightColor: Color
    
    var body: some View {
            Circle()
                .foregroundColor(lightColor)
                .opacity(lightAlpha)
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .frame(width: 150, height: 150)
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(lightAlpha: 1, lightColor: .red)
    }
}

