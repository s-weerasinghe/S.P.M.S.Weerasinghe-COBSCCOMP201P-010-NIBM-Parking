//
//  ContentView.swift
//  NIBM Parking
//
//  Created by sandaruwani weerasinghe on 2021-11-11.
//

import SwiftUI
import FirebaseAuth


/*
class AppViewModel: ObservableObject {

    

    let auth = Auth.auth()

    

    @Published var signedIn = false

    

    var isSignedIn: Bool {

        return auth.currentUser != nil

    }

    

    func signIn(Email: String, Password: String){

           auth.signIn(withEmail: Email,

                       password: Password) { [weak self] result, error in

               guard result != nil, error == nil else{

                   return

               
               

               DispatchQueue.main.async{

                   //success

                   self?.signedIn = true

               }

           }

       }



    func signUp(Email:String, Password: String){

           auth.createUser(withEmail: Email, password: Password) { [weak self] result, error in

               guard result != nil, error == nil else {

                   return

               }

               

               DispatchQueue.main.async {

                   //success

                   self?.signedIn = true

               }

           }

       }



    func signOut(){

            try? auth.signOut()

            

            self.signedIn = false

        }

    }

*/

struct ContentView: View {

    @EnvironmentObject var viewModel: AuthViewModel





    var body: some View {

        

        NavigationView{

                    if viewModel.signedIn {

                    VStack {

                        Text("You are signed in")

                        Button(action: {

                            viewModel.signOut()

                        }, label: {

                            Text("Sign Out")

                                .frame(width: 200, height: 50)

                                .background(Color.green)

                                .foregroundColor(Color.blue)

                                .padding()

                        })

                    }

                    }

                    else {

                        SignIn()

                    }

                }

                .onAppear {

                    viewModel.signedIn = viewModel.isSignedIn

                }

            }





}

