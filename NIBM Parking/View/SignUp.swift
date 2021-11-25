//
//  SignUp.swift
//  NIBM Parking
//
//  Created by Sandaruwani Weerasinghe on 2021-11-25.
//

import SwiftUI

struct SignUp: View {

    @State var Email = ""
    @State var Password = ""
    @State var NIC = ""
    @State var Name = ""
    @State var VehicleNo = ""
    
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View{

        VStack {
            Image("download(1)")
                .resizable()
                .scaledToFit()
                .frame(width:150, height: 150)
            VStack {
                TextField("User Name",text:$Email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))

                SecureField("Password", text: $Password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                TextField("NIC",text:$NIC)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))

                TextField("Name",text:$Name)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                TextField("Vehicle Number",text:$VehicleNo)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))

                Button(action: {
                    guard !Email.isEmpty, !Password.isEmpty else {
                        return
                    }
                    viewModel.signUp(email: Email, password: Password , name: Name, nic: NIC , vehicleNo: VehicleNo)
                }, label: {

                    Text("Create Account")
                        .foregroundColor(Color.blue)
                        .frame(width: 200, height:50)
                        .cornerRadius(8)
                        .background(Color.blue)

                })

        }
        .padding()

            NavigationLink("Terms & Conditions", destination:EmptyView()).foregroundColor(.black)

            

                Spacer()



                }

            .navigationTitle("Create Account")

            .padding()

        

        

    }

}
struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }

}
