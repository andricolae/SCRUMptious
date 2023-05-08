//
//  SCRUMptiousApp.swift
//  SCRUMptious
//
//  Created by Andrei-Nicolae Calutiu on 05.05.2023.
//

import SwiftUI

@main
struct SCRUMptiousApp: App {
    @StateObject private var store = ScrumStore()

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
            }
                .task {
                    do {
                        try await store.load()
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
        }
    }
}
