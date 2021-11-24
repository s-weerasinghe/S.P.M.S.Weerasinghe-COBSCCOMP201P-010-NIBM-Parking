//
//  QR Code.swift
//  NIBM Parking
//
//  Created by Sandaruwani Weerasinghe on 2021-11-23.
//
import SwiftUI
import CodeScanner

struct QRCodeSwiftUIView: View {
  @State var isPresentingScanner = false
  @State var scannedCode: String = "Scan a QR Code to get Started"
    
    var scannerSheet : some View{
        CodeScannerView(
            codeTypes: [.qr],
            completion: {
                result in
                if case let .success(code) = result
                {
                    self.scannedCode = code
                    self.isPresentingScanner = false
                    
                }
            }
       )
    }
    
    var body: some View {
        VStack(spacing: 10)
            {
            Text(scannedCode)
            
            Button("Sacn QR Code")
            {
                self.isPresentingScanner = true
            }
            .sheet(isPresented: $isPresentingScanner){
                self.scannerSheet
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
