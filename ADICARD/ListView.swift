//
//  ListView.swift
//  ADICARD
//
//  Created by Alberto Capone on 12/12/22.
//

import SwiftUI

struct ListView: View {
    
    @State var locations: [Location] = []
    @State private var searchText = ""
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText)}
        }
    }
//    let location = Bundle.main.decode([Location].self, from: "locations.json")
    var names: [String] = ["Cavallino Bianco", "Il gatto", "Sapori Campani", "Amaltea", "Gran Caffè Santos", "O Murzillo", "Les Fleurs", "Caffetteria degli Angeli", "Gambero Rosso", "Bella Napoli", "Ges. servizi integrati SRL", "La focaccia", "Ges. servizi integrati mensa", "Burger beer", "EL.VI ex Napoli Napoli", "A&C private ex EP mensa", "Cantinella do cunvento", "Gala gas", "Nicolò young", "Caffetteria andreozzi", "Rendez vous", "Eno wine bistrot", "MO.CA", "Pasco", "MA.FA.DA", "Bar erasmus", "EP SPA", "EP SPA", "Dussmann", "Gemeas Elior"]

    var body: some View {
        NavigationView {
            
            List {
                ForEach(locations) { location in
                    
                    NavigationLink(destination: RestaurantDetailView (RestaurantDetail:location)){
                                HStack {
                                    Image("\(location.image)")
                                        .resizable()
                                        .frame(width: 120,height: 90)
                                        .mask(Rectangle())
                                    VStack{
                                        Text("\(location.name)")
                                    }
//                                            RestaurantMenuRow(place: place)
//                                            Spacer()
                    
                                        }
                                    }
                }
            }
            .onAppear(perform: readFile)
            .searchable(text: $searchText) {
                                ForEach(searchResults, id: \.self) {result in
                                    HStack {
                                        Text(result.capitalized)
                                        Spacer()
                                    }
                                }
                            }
            .navigationTitle("Restaurants")
            }
        }
    
    func readFile() {
    if let url = Bundle.main.url(forResource: "locations", withExtension: "json"),
       let data = try? Data(contentsOf: url) {
      let decoder = JSONDecoder()
      if let jsonData = try? decoder.decode(JSONData.self, from: data) {
        self.locations = jsonData.locations
      }
    }
  }
        }
            struct ListView_Previews: PreviewProvider {
                static var previews: some View {
                    ListView()
                }
            }
