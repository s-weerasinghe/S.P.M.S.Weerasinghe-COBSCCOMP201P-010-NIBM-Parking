//
//  Home.swift
//  NIBM Parking
//
//  Created by Sandaruwani Weerasinghe on 2021-11-24.
//

import SwiftUI

struct Home: View {
    @State private var checkbox1: Bool = false
    @State private var checkbox2: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.green, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("NIBM Parking")
                    .font(.system(size:40, weight: .medium, design: .default))
                    .foregroundColor(.black)
                    .padding()
                Spacer()
                
                VStack(spacing: 20) {
                    Image("nibm")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 180, height: 180)
                }
                
                VStack(spacing: 20) {
                    
                    Text("Slots")
                        .font(.system(size:30,weight: .medium))
                        .foregroundColor(.black)
                    
                    Toggle(isOn: $checkbox1){
                        Text("Available")
                    }.toggleStyle(CheckboxToggleStyle())
                    Toggle(isOn: $checkbox2){
                        Text("not Available")
                    }.toggleStyle(CheckboxToggleStyle())                    .padding()
                    
                    Text("Identify Vehicle")
                        .font(.system(size:30,weight: .medium))
                        .foregroundColor(.black)
            
                    Toggle(isOn: $checkbox1){
                        Text("VIP")
                    }.toggleStyle(CheckboxToggleStyle())
                    Toggle(isOn: $checkbox2){
                        Text("Normal")
                    }.toggleStyle(CheckboxToggleStyle())                    .padding()
                    
                    Text("Remaning Time")
                        .font(.system(size:30,weight: .medium))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                }
                          
                }
                    
            }
            }
        }

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Button{
                configuration.isOn.toggle()
            } label: {
                Image(systemName: configuration.isOn ?  "Unknown-2" : "square")
            }
                        .padding(5)
                        .font(.title3)
                        .accentColor(Color(UIColor.label))
        }
    }
}

    
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
