//
//  ContentView.swift
//  porchu
//
//  Created by James Sweeney on 1/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("porchu")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
