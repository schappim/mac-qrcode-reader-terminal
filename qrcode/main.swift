//
//  main.swift
//  qrcode
//
//  Created by Marcus Schappi on 9/5/21.
//

import Foundation
import CoreImage
import Cocoa

func detectQRCode(fileName : URL) -> [CIFeature]? {
    if let ciImage = CIImage(contentsOf: fileName){
    let context = CIContext()
    let options = [CIDetectorAccuracy: CIDetectorAccuracyHigh]
    let qrDetector = CIDetector(ofType: CIDetectorTypeQRCode, context: context, options: options)
    let features = qrDetector?.features(in: ciImage, options: options)
    return features
}
    return nil
}

let args = CommandLine.arguments

if args.count > 1 {
    let inputURL = URL(fileURLWithPath: args[1])
   
    if let features = detectQRCode(fileName : inputURL), !features.isEmpty{
        for case let row as CIQRCodeFeature in features{
            print(row.messageString ?? "nope")
        }
        
    }
    
    exit(EXIT_SUCCESS)
} else {
    fputs("Error - Not enough arguments\n", stderr)
    exit(EXIT_FAILURE)
}
