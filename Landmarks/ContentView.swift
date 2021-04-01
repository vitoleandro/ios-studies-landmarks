//
//  ContentView.swift
//  Landmarks
//
//  Created by Leandro Vitor on 31/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            ScrollView {
                DetailView()
                Divider()
                DetailView()
                Divider()
                DetailView()
                Divider()
                DetailView()
            }
            
            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
