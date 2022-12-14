//
//  Transizioniview.swift
//  ADICARD
//
//  Created by Alberto Capone on 14/12/22.
//

import SwiftUI

struct Transizioniview: View {
    let cards: Carta
    var body: some View {
        NavigationLink(destination: bianca()){
            ZStack{

                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .frame(width: 390,height: 90)
                    .foregroundColor(.white)
                VStack {

                    HStack{
                        Spacer()
                        Text(cards.prompt)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.blue);
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()

                    }
                    //                Spacer()
                    HStack{
                        Spacer()
                        Text("16/10/2022")
                            .foregroundColor(.black)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Text(cards.answer)
                            .font(.subheadline)
                            .foregroundColor(.black);
                        Spacer()
                    }
                }
            }
        }
    }
}
struct Transizioniview_Previews: PreviewProvider {
    static var previews: some View {
        Transizioniview(cards: Carta.example)
    }
}
