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
                //.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            VStack(alignment: .leading) {
                Text("Chicken Bowl")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.leading, 20)
                Text("Out of Stock")
                    .fontWeight(.medium)
                    .foregroundStyle(.red)
                    .padding(.leading, 20)
            }
        }
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("Menu Options Color"))
                .frame(height: 100)
                //.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            VStack(alignment: .leading) {
                Text("Hummus & Cucumber Sandwich")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.leading, 20)
                Text("Limited Availability")
                    .fontWeight(.medium)
                    .foregroundStyle(.purple)
                    .padding(.leading, 20)
            }
        }
    }
}

#Preview {
    MenuOptionsView()
}
