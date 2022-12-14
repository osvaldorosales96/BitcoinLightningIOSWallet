//
//  QRCode.swift
//  CryptoMXWallet
//
//  Created by Osvaldo Rosales Perez on 03/08/22.
//

import Foundation
import UIKit
import CoreImage.CIFilterBuiltins

let qrContext = CIContext()
let qrFilter = CIFilter.qrCodeGenerator()

extension String {
    var qrcode: UIImage {
        let data = Data(self.utf8)
        qrFilter.setValue(data, forKey: "inputMessage")
        
        if let outputImage = qrFilter.outputImage {
            if let cgimg = qrContext.createCGImage(outputImage, from: outputImage.extent){
                return UIImage(cgImage: cgimg)
            }
        }
        
        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
    
    var splitArray: [String] {
        let length = self.count
        return [
            String(self.prefix(length/2)),
            String(self.suffix(length/2))
        ]
    }
    
    var shortBolt: String {
        let prefix = self.prefix(18)
        let suffix = self.suffix(18)
        return "\(prefix)...\(suffix)"
    }
    
    var toUInt64: UInt64 {
        return UInt64(self) ?? 0
    }
}

extension Date {
    func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}

