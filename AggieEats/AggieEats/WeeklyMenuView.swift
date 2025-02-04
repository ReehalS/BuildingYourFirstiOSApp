//
//  WeeklyMenuView.swift
//  AggieEats
//

import SwiftUI

struct WeeklyMenuView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Weekly Menu")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                //TODO: Integrate JSON data into the weekly menu.
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WeeklyMenuView()
}
