//
//  ContentView.swift
//  AggieEats
//

import SwiftUI

//TODO: Import this package: https://github.com/twostraws/CodeScanner

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
    
//TODO: Uncomment This Function When Implementing QR Code Scanning.
  /* func handleScan(result: Result<ScanResult, ScanError>) {
       showScanner = false
        switch result {
        case .success(let result):
            navigateToOrderingPage = true
            
        case .failure(let error):
            print("Scanning failed: \(error.localizedDescription)")
        }
    }*/
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
