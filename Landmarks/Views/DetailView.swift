//
//  DetailView.swift
//  Landmarks
//
//  Created by Leandro Vitor on 31/03/21.
//

import SwiftUI

struct DetailView: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                Text(landmark.park)
                    .font(.title)
                HStack {
                    Text(landmark.name)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                Text(landmark.description)
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(landmark: landmarks[1])
    }
}
