//
//  RestaurantDetail.swift
//  ADICARD
//
//  Created by Alberto Capone on 12/12/22.
//

import SwiftUI

struct RestaurantDetailView: View {
    
    @State private var comment: String = ""
    var RestaurantDetail: Location
    
    var body: some View {
        
        ScrollView{
            
            VStack (alignment: .leading, content: {
                Image("\(RestaurantDetail.image)")
                    .resizable()
                    .frame(width: 390, height: 200)
                    .scaledToFill()
                Text("\(RestaurantDetail.name)")
                    .bold()
                    .font(.title)
                    .padding(.leading)
                Text("")
                Text("Address: \(RestaurantDetail.address)")
                    .padding(.leading)
                Text("Phone: \(RestaurantDetail.phone)")
                    .padding(.leading)
                Text("Category: \(RestaurantDetail.category)")
                    .padding(.leading)
                Text("Website: \(RestaurantDetail.website)")
                    .padding(.leading)
                
            }
           )
        }
    }
}
