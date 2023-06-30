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
    
    let roles = ["Mentor", "Mentee", "Peer"]

    var body: some View {
        
//                        Color.black.edgesIgnoringSafeArea(.all) // Use color suitable for dark mode

        NavigationView {

            VStack {
//                Color.black.edgesIgnoringSafeArea(.all) // Use color suitable for dark mode

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
                    }
                    
                    Section {
                        Button("Submit") {
                            if firstName.isEmpty || lastName.isEmpty || role.isEmpty {
                                // Show alert if form is incomplete
                                showAlert = true
                            } else {
                                // Handle the form submission
                                //                            print("Form Submitted")
                                print("Form Submitted:\nFirst Name: \(firstName)\nLast Name: \(lastName)\nAge: \(age)\nRole: \(role)")
                                
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

    }
    
    @State private var showAlert = false
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

