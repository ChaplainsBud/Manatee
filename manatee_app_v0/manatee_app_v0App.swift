//
//  manatee_app_v0App.swift
//  manatee_app_v0
//
//  Created by Matthew Leroe on 6/28/23.
//

import SwiftUI

@main
struct manatee_app_v0App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
