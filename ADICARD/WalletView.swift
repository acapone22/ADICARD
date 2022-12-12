//
//  WalletView.swift
//  ADICARD
//
//  Created by Alberto Capone on 12/12/22.
//

import SwiftUI

struct WalletView: View {
    //@EnvironmentObject var wallet : Wallet
    @State var isVisible: Bool = false
    
    var body: some View {
        NavigationView{
 
                VStack{
                    
                    HStack{
                        Text("Wallet")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .frame(width: 130,height: 70)
                        
                        
                        Spacer()
                            .padding(.trailing)
                        Button{
                        } label: {
                            Image(systemName: "shippingbox.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.blue)
                            
                        }
                        
                        Button {
                            self.isVisible = true
                        } label: {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.blue)
                                .padding(.trailing)
                        }
                        Spacer()
                    }
                    card()
                    Spacer()
                    }
 }.navigationBarTitleDisplayMode(.inline)
        }
    }







struct Mess_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
