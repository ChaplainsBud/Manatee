//
//  MatchView.swift
//  manatee_app_v0
//
//  Created by Matthew Leroe on 6/28/23.
//

import SwiftUI

struct MatchView: View {
    @State private var selectedRole: String = "Mentor"
    @State private var selectedAge: Int = 18
    @State private var enteredInterests: String = ""

    let roles = ["Mentor", "Mentee", "Peer"]
    let ages = Array(18...99)

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Picker("Role", selection: $selectedRole) {
                        ForEach(roles, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    Picker("Age", selection: $selectedAge) {
                        ForEach(ages, id: \.self) {
                            Text("\($0)").tag($0)
                        }
                    }
                    
                    // Textfield for entering interests
                    TextField("Enter Interests", text: $enteredInterests)
                }
                
                Button(action: {
                    print("Finding matches with Role: \(selectedRole), Age: \(selectedAge), Interests: \(enteredInterests)")
                }) {
                    Text("Submit")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    print("Finding random match...")
                }) {
                    Text("Random Match")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 10)
            }
            .navigationTitle("Match View")
        }
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}

