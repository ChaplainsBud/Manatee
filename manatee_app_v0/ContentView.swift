//
//  ContentView.swift
//  manatee_app_v0
//
//  Created by Matthew Leroe on 6/28/23.
//

// Manatee TEST for First Commit

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {

        TabView(selection: $selection){
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house.fill")
                        }
                        .tag(0)

                    RegisterView()
                        .tabItem {
                            Label("Register", systemImage: "pencil.circle.fill")
                        }
                        .tag(1)

                    MatchView()
                        .tabItem {
                            Label("Match", systemImage: "person.2.fill")
                        }
                        .tag(2)

                    ScheduleView()
                        .tabItem {
                            Label("Schedule", systemImage: "calendar.circle.fill")
                        }
                        .tag(3)

                    ResourcesView()
                        .tabItem {
                            Label("Resources", systemImage: "books.vertical.fill")
                        }
                        .tag(4)
                }
            
            }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
