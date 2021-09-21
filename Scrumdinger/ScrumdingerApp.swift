//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Alex Billson on 21/08/2021.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.data
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
