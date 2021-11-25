//
//  SignIn.swift
//  NIBM Parking
//
//  Created by Sandaruwani Weerasinghe on 2021-11-25.
//

import SwiftUI

struct SignIn: View{

    @State var Email = ""

    @State var Password = ""

    

    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {

        NavigationView{
        VStack{

                Image("download (1)")
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
                    Button(action: {
                        guard !Email.isEmpty, !Password.isEmpty else {
                            return
                        }
                        viewModel.signIn(email: Email, password: Password)

                    }, label: {

                        Text("Sign In")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height:50)
                            .cornerRadius(8)
                            .background(Color.blue)

                    })
                    NavigationLink("Create Account", destination: SignUp())

                        .padding()
            }

            .padding()
          Spacer()

}
            .navigationTitle("Sign In")

        }

    }

}
