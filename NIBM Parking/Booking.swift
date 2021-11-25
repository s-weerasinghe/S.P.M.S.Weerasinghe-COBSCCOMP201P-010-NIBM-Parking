//
//  Booking.swift
//  NIBM Parking
//
//  Created by Sandaruwani Weerasinghe on 2021-11-25.
//

import SwiftUI

struct Booking: View {
    @State private var checkbox1: Bool = false
    @State private var checkbox2: Bool = false
    var body: some View {
            NavigationView{
            Form{
                Label("Registration No", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                Label("Vehicle No", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                
                VStack() {
                    Label("Slot", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                    
                    Toggle(isOn: $checkbox1){
                        Text("Available")
                    }.toggleStyle(CheckboxToggleStyle())
                    Toggle(isOn: $checkbox2){
                        Text("not Available")
                    }.toggleStyle(CheckboxToggleStyle())                    .padding()
                Button(action: {}) {
                    Text("Receive")
                    Spacer()
                    Text("Scan QR Code")
                }
                }
            }
            .navigationTitle("Booking Page")
                            
            }
    }
    
}
struct Booking_Previews: PreviewProvider {
    static var previews: some View {
        Booking()
    }
}
