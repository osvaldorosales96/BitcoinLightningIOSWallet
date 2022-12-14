//
//  LNWallet.swift
//  CryptoMXWallet
//
//  Created by Osvaldo Rosales Perez on 05/08/22.
//

import Foundation

struct LightningWallet {
    let id: String
    let name: String
    var balanceMsats: UInt64
    var transactions: [LNTransaction]
    
    var balanceSats: String {
        String(format: "%.3f", Double(balanceMsats) / Double(1000))
    }
    var balanceBtc: String {
        String(format: "%.8f", Double(balanceMsats) / Double(1000) / Double(100000000))
    }
}

struct RequiredInitialLightningData {
    let id: String
    let name: String
}




