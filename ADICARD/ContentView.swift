//
//  ContentView.swift
//  ADICARD
//
//  Created by Alberto Capone on 06/12/22.
//

import MapKit
import SwiftUI


struct ContentView: View {
    

    
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var locations: [Location] = []

    @State private var coordinateRegion = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 40.863, longitude: 14.2767),
    span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1.2)
  )
    @State private var searchableText = ""
    
  var body: some View {


     NavigationView {
         
          VStack {
              
                Map(
                  coordinateRegion: $coordinateRegion,
                  interactionModes: MapInteractionModes.all,
                  showsUserLocation: true,
                  userTrackingMode: $userTrackingMode,
                  annotationItems: locations
                ) { location in
                  MapAnnotation(
                    coordinate: CLLocationCoordinate2D(
                      latitude: location.latitude,
                      longitude: location.longitude
                    )
                  ) {
                      
                      NavigationLink(destination: RestaurantDetailView(RestaurantDetail: location)) {
                          if location.category == "pizzeria"{
                              VStack(spacing: 0) {
                                  Text("🍕")
                                      .font(.system(size: 30, weight: .light, design: .serif))
                              }
                          }else if location.category == "bar" {
                              VStack(spacing: 0) {
                                  Text("☕️")
                                      .font(.system(size: 30, weight: .light, design: .serif))
                              }
                          }
                          else if location.category == "canteen" {
                              VStack(spacing: 0) {
                                  Text("🍽️")
                                      .font(.system(size: 30, weight: .light, design: .serif))
                              }
                          } else {
                              VStack(spacing: 0) {
                                  Text("🥗")
                                      .font(.system(size: 30, weight: .light, design: .serif))
                              }
                          }

                      }
                      
                  }
                    
          }
        }
          .onAppear(perform: readFile)
         
         NavigationLink(destination: Text("")) {
             
         }
         
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



struct JSONData: Codable {
  let locations: [Location]
}

struct Location: Codable, Identifiable {
    let id: Int
    let name: String
    let address: String
    let phone: String
    let category : String
    let website: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      MainView()
  }
}
