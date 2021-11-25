//
//  Settingview.swift
//  NIBM Parking
//
//  Created by Sandaruwani Weerasinghe on 2021-11-23.
//

import SwiftUI

struct Settingview: View {
    var body: some View {
        NavigationView{
        Form{
        Text("Setting")
            Label("Name", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            Label("NIC", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            Label("Register NO", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            Label("Vehicle NO", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("LogOut")
            }
        }
        .navigationTitle("Settings")
        }
    }
}
struct Settingview_Previews: PreviewProvider {
    static var previews: some View {
        Settingview()
    }
}
