//
//  CardView.swift
//  ADICARD
//
//  Created by Alberto Capone on 12/12/22.
//

import SwiftUI

struct card: View {
    var body: some View {
        
        HStack{
            VStack{
                
                Image("adisurc")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width:100 ,height:100)
                Spacer()
                HStack{
                    Spacer()
                    Text("SMART CARD")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.trailing)
                        .padding(.trailing)
                }
            }
            //                Spacer()
            //                Image(systemName: "circle.fill")
            //                    .resizable()
            //                    .frame(width: 60, height:60)
            //                    .foregroundColor(.red)
            //
            //
            //                Image(systemName: "circle.fill")
            //                    .resizable()
            //                    .frame(width: 60,height: 60)
            //                    .foregroundColor(.yellow)
            //                    .padding(.trailing)
            
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .frame(width:360, height:240)
            .background(Color.blue)
            .cornerRadius(12)
            .foregroundColor(.blue)
        }
    }
}
            
        
    

struct card_Previews: PreviewProvider {
    static var previews: some View {
        card()
    }
}
