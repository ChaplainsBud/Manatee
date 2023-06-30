//
//  RegisterView.swift
//  manatee_app_v0
//
//  Created by Matthew Leroe on 6/28/23.
//

import SwiftUI

struct RegisterView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var age = 18
    @State private var role = "Mentor"
    
    @State private var newInterest = ""
    @State private var interests: [String] = []

    let roles = ["Mentor", "Mentee", "Peer"]

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    Picker("Role", selection: $role) {
                        ForEach(roles, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("Age", selection: $age) {
                        ForEach(1..<100) { age in
                            Text("\(age)").tag(age)
                        }
                    }
                    
                    // Added section for interests
                    VStack(alignment: .leading) {
                        TextField("Add an interest", text: $newInterest)
                        Button(action: {
                            if !newInterest.isEmpty {
                                interests.append(newInterest)
                                newInterest = ""
                            }
                        }) {
                            Text("Add Interest")
                        }
                        ForEach(interests, id: \.self) { interest in
                            Text(interest)
                        }
                    }
                }

                Section {
                    Button("Submit") {
                        if firstName.isEmpty || lastName.isEmpty || role.isEmpty {
                            // Show alert if form is incomplete
                            showAlert = true
                        } else {
                            // Handle the form submission
                            print("Form Submitted:\nFirst Name: \(firstName)\nLast Name: \(lastName)\nAge: \(age)\nRole: \(role)\nInterests: \(interests.joined(separator: ", "))")
                        }
                    }
                }
            }
            .navigationTitle("User Info")
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Missing Information"), message: Text("Please fill out all fields."), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    @State private var showAlert = false
}


struct Register_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

