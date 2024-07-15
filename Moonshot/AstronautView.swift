//
//  AstronautView.swift
//  Moonshot
//
//  Created by Berlin Thomas on 2024-07-15.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
        VStack {
            Image(astronaut.id)
                .resizable()
                .scaledToFit()
            
            Text(astronaut.description)
                .padding()
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    return  AstronautView(astronaut: astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
}
