//
//  Walletview.swift
//  ADICARD
//
//  Created by Alberto Capone on 14/12/22.
//

import SwiftUI

struct WalletView: View {
    var body: some View {
        NavigationView{
            ZStack{Color(.secondarySystemFill)
                    .navigationTitle("Wallet")
                    .navigationBarTitleDisplayMode(.automatic)
                    .navigationBarItems(trailing: HStack{
                        Button{
                        } label: {
                            Image(systemName: "shippingbox.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.blue)
                        }
                        Button {} label: {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.blue)
                                .padding(.trailing)
                        }
                    })
               .ignoresSafeArea()

                VStack{
                    card()
                    ScrollView{ VStack(alignment: .leading) {
                        ForEach(0..<100) {_ in
                            Transizioniview(cards: Carta.example)
                        }
                    }
                    .controlSize(.regular)
                }
                        Spacer()
                    }
                }
            }
                }
                }

struct Walletview_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
