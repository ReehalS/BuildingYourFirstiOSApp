//
//  ContentView.swift
//  AggieEats
//

import SwiftUI
import MapKit

//TODO: Import this package: https://github.com/twostraws/CodeScanner

struct HomePage: View {
    @State var showScanner: Bool = false
    @State var navigateToOrderingPage: Bool = false
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Today's Location")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        ScanQrCodeButton(showScanner: $showScanner)
                    }
                    Spacer()
                    Text("Memorial Union").font(.largeTitle).fontWeight(.bold)
                } // inner vstack
                
                TruckLocationView()
                TodaysMenuView()
                
            } // outer vstack
        } // scroll view end
        .sheet(isPresented: $showScanner) {
            CodeScannerView(codeTypes: [.qr],
                            simulatedData: "ABCDE", completion: handleScan)
        })
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
//TODO: Uncomment This Function When Implementing QR Code Scanning.
    func handleScan(result: Result<ScanResult, ScanError>) {
        showScanner = false
        switch result {
        case .success(let result):
            navigateToOrderingPage = true
            
        case .failure(let error):
            print("Scanning failed: \(error.localizedDescription)")
        }
    }
}

struct ScanQrCodeButton: View {
    @Binding var showScanner: Bool
    var body: some View {
        Button {
            // Implement Later
            showScanner=true
        } label: {
            Image(systemName: "camera")
                .imageScale(.large)
        }
    }
}

struct TruckLocationView: View {
    var body: some View {
        // Latitude 38.54141
        // Longitude: -121.74845
        Map {
            Marker("MU", coordinate:  CLLocationCoordinate2D(latitude: 38.54141, longitude: -121.74845))
        }
        .frame(width: 370, height: 400)
        .padding(.bottom)
    }
}

struct TodaysMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("What's On The Menu?")
                .font(.title)
                .fontWeight(.bold)
            MenuOptionsView()
            
        }
    }
}



#Preview {
    HomePage()
}
