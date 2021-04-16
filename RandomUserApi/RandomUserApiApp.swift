//
//  RandomUserApiApp.swift
//  RandomUserApi
//
//  Created by 박민규 on 2021/04/16.
//

import SwiftUI

@main
struct RandomUserApiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
