//
//  SingleTxView.swift
//  CryptoMXWallet
//
//  Created by Osvaldo Rosales Perez on 18/07/22.
//

import SwiftUI
import BitcoinDevKit

struct SingleTxView: View {
    var transaction: BitcoinDevKit.Transaction
    
    var body: some View {
        VStack(alignment: .leading) {
            switch transaction {
            case .unconfirmed(let details):
                HStack {
                    Text("Received:").textStyle(BasicTextStyle(white: true, bold: true))
                    Text(String(details.received)).textStyle(BasicTextStyle(white: true))
                }
                HStack {
                    Text("Sent:").textStyle(BasicTextStyle(white: true, bold: true))
                    Text(String(details.sent)).textStyle(BasicTextStyle(white: true))
                }
                HStack {
                    Text("Fees:").textStyle(BasicTextStyle(white: true, bold: true))
                    Text(String(details.fee ?? 0)).textStyle(BasicTextStyle(white: true))
                }
                HStack {
                    Text("Txid:").textStyle(BasicTextStyle(white: true, bold: true))
                    Text(details.txid).textStyle(BasicTextStyle(white: true))
                }
            case .confirmed(let details, let confirmation):
                HStack {
                    Text("Confirmed:").textStyle(BasicTextStyle(white: true, bold: true))
                    Text((Date(timeIntervalSince1970: TimeInterval(confirmation.timestamp)).getFormattedDate(format: "yyyy-MM-dd HH:mm:ss"))).textStyle(BasicTextStyle(white: true))
                }
                HStack {
                    Text("Block:").textStyle(BasicTextStyle(white: true, bold: true))
                    Text(String(confirmation.height)).textStyle(BasicTextStyle(white: true))
                }
                HStack {
                    Text("Received:").textStyle(BasicTextStyle(white: true, bold: true))
                    Text(String(details.received)).textStyle(BasicTextStyle(white: true))
                }
                HStack {
                    Text("Sent:").textStyle(BasicTextStyle(white: true, bold: true))
                    Text(String(details.sent)).textStyle(BasicTextStyle(white: true))
                }
                HStack {
                    Text("Fees:").textStyle(BasicTextStyle(white: true, bold: true))
                    Text(String(details.fee ?? 0)).textStyle(BasicTextStyle(white: true))
                }
                HStack {
                    Text("Txid:").textStyle(BasicTextStyle(white: true, bold: true))
                    Text(details.txid).textStyle(BasicTextStyle(white: true))
                }
            }
        }.padding(10)
            .background(Color.blue).cornerRadius(5)
            .contextMenu{
                Button(action: {
                    UIPasteboard.general.string = transaction.getDetails().txid}) {
                        Text("Copy Txid")
                    }
            }.padding(.vertical, 10)
    }
}

struct SingleTxView_Previews: PreviewProvider {
    static var previews: some View {
        SingleTxView(transaction: Transaction.confirmed(details: TransactionDetails(fee: nil, received: 1000, sent: 10000, txid: "some-other-tx-id"), confirmation: BlockTime(height: 20087, timestamp: 1635863544)))
        
        SingleTxView(transaction: Transaction.unconfirmed(details: TransactionDetails(fee: nil, received: 42069, sent: 1234, txid: "420-69-1234-0000")))
    }
}
