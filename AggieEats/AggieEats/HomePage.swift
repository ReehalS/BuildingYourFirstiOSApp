//
//  ContentView.swift
//  AggieEats
//
//  Created by Ashley Valdez on 1/2/25.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ScanQrCodeButton: View {
    var body: some View {
        EmptyView()
    }
}

struct TruckLocationView: View {
    var body: some View {
        EmptyView()
    }
}

struct TodaysMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            EmptyView()
        }
    }
}



#Preview {
    HomePage()
}
