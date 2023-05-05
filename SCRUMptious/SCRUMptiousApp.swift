//
//  SCRUMptiousApp.swift
//  SCRUMptious
//
//  Created by Andrei-Nicolae Calutiu on 05.05.2023.
//

import SwiftUI

@main
struct SCRUMptiousApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
