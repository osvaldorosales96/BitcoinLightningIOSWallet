//
//  BitcoinWalletView.swift
//  CryptoMXWallet
//
//  Created by Osvaldo Rosales Perez on 20/07/22.
//

import SwiftUI

struct BitcoinWalletView: View {
    @EnvironmentObject private var stateController : StateController
    
    var body: some View {
        NavigationView {
            Content(balanceText: stateController.bitcoinWallet.balanceText, sync: sync)
        }
    }
    
    func sync() {
        stateController.syncBitcoin()
    }
}

extension BitcoinWalletView {
    struct Content: View {
        var balanceText: String
        let sync: () -> Void
        
        var body: some View {
            VStack(spacing: 40) {
                
                Text("Bitcoin Wallet").lilacTitle()
                
                Spacer()
                BalanceDisplay(balanceText: balanceText)
                
                Button(action: sync){
                    PrimaryButton(text: "Sync wallet")
                }
                
                NavigationLink(destination: TransactionHistoryView()){
                    PrimaryButton(text: "Transaction History")
                }
                
                HStack{
                    NavigationLink(destination: ReceiveView()){
                        PrimaryButton(text: "Receive", background: .green)
                    }

                    NavigationLink(destination: SendView()){
                    PrimaryButton(text: "Send", background: .red)
                    }
                }
                
                Spacer()
            }
            .padding()
//            .navigationBarTitle("Bitcoin Wallet", displayMode: .inline)
        }
    }
}
        

struct BitcoinWalletView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            NavigationView {
                BitcoinWalletView.Content(balanceText: TestData.bitcoinWallet.balanceText, sync: {})
            }
        }
    }
}
