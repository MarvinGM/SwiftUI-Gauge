//
//  ContentView.swift
//  SwiftUI Gauge WatchKit Extension
//
//  Created by Amben on 6/14/21.
//

import SwiftUI

struct ContentView: View {
    
    var gradient = Gradient(colors: [.blue, .pink, .purple, .orange])
    
    var body: some View {
        Gauge(value: 33.0, in: 0.0...100.0) {
            Text("Speed")
                .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        } currentValueLabel: {
            Text("33")
                .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        } minimumValueLabel: {
            Text("0")
                .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        } maximumValueLabel: {
            Text("100")
                .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        
        .gaugeStyle(CircularGaugeStyle(tint: gradient))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

