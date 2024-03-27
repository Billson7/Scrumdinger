//
//  EditScrumSheetView.swift
//  Scrumdinger
//
//  Created by Alex Billson on 27/03/2024.
//

import SwiftUI

struct EditScrumSheetView: View {
    @State private var editingScrum = DailyScrum.emptyScrum
    @Binding var scrum: DailyScrum
    @Binding var isPresentingEditView: Bool
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $editingScrum)
                .navigationTitle(scrum.title)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            isPresentingEditView = false
                            scrum = editingScrum
                        }
                    }
                }
        }
    }
}

struct EditScrumSheetView_Previews: PreviewProvider {
    static var previews: some View {
        EditScrumSheetView(scrum: .constant(DailyScrum.sampleData[0]),
                           isPresentingEditView: .constant(true))
    }}
