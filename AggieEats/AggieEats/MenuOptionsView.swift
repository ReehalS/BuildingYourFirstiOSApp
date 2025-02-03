//
//  MenuOptionsView.swift
//  AggieEats
//

import SwiftUI

struct MenuOptionsView: View {
    //@State var menuItems: OrderedDictionary<String, [String]>
    
    var body: some View {
        EmptyView()
        
        //TODO: Uncomment the code below.
        /*ForEach(menuItems.keys, id: \.self) { key in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("Menu Options Color"))
                    .frame(height: 130)
                VStack(alignment: .leading) {
                    //TODO: Add showFoodAvailability and AllergensView subviews.
                }
                .padding(.leading)
                    
                }
                
            }*/
            
    }
}

struct showFoodAvailability: View {
    var body: some View {
        EmptyView()
    }
}

struct AllergensView: View {
    @State var allergens: [String]
    var body: some View {
        VStack(alignment: .leading) {
            HStack {

            } //end of outer HStack
        } //end of VStack
    }
}

