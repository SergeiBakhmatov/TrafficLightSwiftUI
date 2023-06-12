//
//  TrafficLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Sergei Bakhmatov on 10.06.2023.
//

import SwiftUI



struct LightView: View {
    
    let opacity: Double
    let color: Color
    
    var body: some View {
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .frame(width: 150)
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(opacity: 1, color: .red)
    }
}

