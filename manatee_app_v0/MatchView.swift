//
//  MatchView.swift
//  manatee_app_v0
//
//  Created by Matthew Leroe on 6/28/23.
//

import SwiftUI

struct MatchView: View {
    var body: some View {
        VStack {
            Text("Manatee Mentee App")
                .font(.largeTitle)
                .padding()
            
            Spacer()
            
            Image("manatee")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Spacer()
            
            Text("Enjoy Your Walk")
                .font(.title)
                .padding()
        }
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}