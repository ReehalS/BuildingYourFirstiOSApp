//
//  MenuOptionsView.swift
//  AggieEats
//

import SwiftUI

struct MenuOptionsView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("Menu Options Color"))
                .frame(height: 100)
            VStack(alignment: .leading) {
                Text("Chicken Bowl")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("Out of Stock")
                    .fontWeight(.medium)
                    .foregroundStyle(.red)
            }
            .padding()
        }
            
            //2nd Menu Option
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("Menu Options Color"))
                    .frame(height: 100)
                VStack(alignment: .leading) {
                    Text("Hummus & Cucumber Sandwich")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("Limited Availability")
                        .fontWeight(.medium)
                        .foregroundStyle(.yellow)
                }
                .padding()
            }
        }
}

#Preview {
    MenuOptionsView()
}
