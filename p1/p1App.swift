//
//  p1App.swift
//  p1
//
//  Created by User11 on 2021/1/8.
//

import SwiftUI

@main
struct p1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
