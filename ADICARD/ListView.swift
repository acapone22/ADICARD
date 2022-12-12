//
//  ListView.swift
//  ADICARD
//
//  Created by Alberto Capone on 12/12/22.
//

import SwiftUI

struct ListwView: View {
    
    private var Restaurant = restaurants
    
    @State private var searchText = ""
    
    var names: [String] = ["Cavallino Bianco", "Il gatto", "Sapori Campani", "Amaltea", "Gran Caffè Santos", "O Murzillo", "Les Fleurs", "Caffetteria degli Angeli", "Gambero Rosso", "Bella Napoli", "Ges. servizi integrati SRL", "La focaccia", "Ges. servizi integrati mensa", "Burger beer", "EL.VI ex Napoli Napoli", "A&C private ex EP mensa", "Cantinella do cunvento", "Gala gas", "Nicolò young", "Caffetteria andreozzi", "Rendez vous", "Eno wine bistrot", "MO.CA", "Pasco", "MA.FA.DA", "Bar erasmus", "EP SPA", "EP SPA", "Dussmann", "Gemeas Elior"]
    
    var body: some View {
        NavigationView {
            List(Restaurant) { place in
                NavigationLink(destination: RestaurantDetailView (RestaurantDetail:place)){
                    HStack {
                        Image("\(place.image)")
                            .resizable()
                            .frame(width: 120,height: 90)
                            .mask(Rectangle())
                        RestaurantMenuRow(place: place)
                        Spacer()
                        
                    }
                }
            }
            .searchable(text: $searchText) {
                ForEach(searchResults, id: \.self) {result in
                    HStack {
                        Text(result.capitalized)
                        Spacer()
                    }
                }
            }
            
            .navigationTitle("Affiliates Adisurc")
            }
        }
            
            var searchResults: [String] {
                if searchText.isEmpty {
                    return names
                } else {
                    return names.filter { $0.contains(searchText)}
                }
            }
        }
            struct ListwView_Previews: PreviewProvider {
                static var previews: some View {
                    ListwView()
                }
            }
