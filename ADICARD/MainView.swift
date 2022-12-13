//
//  MainView.swift
//  ADICARD
//
//  Created by Alberto Capone on 12/12/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
           ContentView()
                .tabItem{
                Label("Map", systemImage: "map")
               }
           WalletView()
            .tabItem{
                   Label("Wallet", systemImage: "creditcard.fill")
               }
            ListView()
                .tabItem{
                   Label("List", systemImage: "list.bullet.rectangle.portrait.fill")
              }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
