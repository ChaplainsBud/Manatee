//
//  HomeView.swift
//  manatee_app_v0
//
//  Created by Matthew Leroe on 6/28/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("")
//                .font(.largeTitle)
                .font(.custom("Chalkboard SE", size: 30)) // Custom chalk-like font
                .foregroundColor(Color(red: 0.529, green: 0.808, blue: 0.922)) // Sky blue

                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color(red: 0.1, green: 0.1, blue: 0.1)) // Dark gray background
                            .edgesIgnoringSafeArea(.all)
                .padding()
            
            Spacer()
            
            Image("manatee")
                .resizable()
//                .aspectRatio(contentMode: .fit)
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .edgesIgnoringSafeArea(.horizontal)
//                .padding()
            
            Spacer()
            
            Text("")
//                .font(.title)
                .font(.custom("Chalkboard SE", size: 30)) // Custom chalk-like font
                .foregroundColor(Color(red: 0.529, green: 0.808, blue: 0.922)) // Sky blue

                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color(red: 0.1, green: 0.1, blue: 0.1)) // Dark gray background
                            .edgesIgnoringSafeArea(.all)
                .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black) // Setting background color to black
                .edgesIgnoringSafeArea(.all) // Ensuring the color fills the entire screen
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

