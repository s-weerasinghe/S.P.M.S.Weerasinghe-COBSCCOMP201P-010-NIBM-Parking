//
//  HomeView.swift
//  NIBM Parking
//
//  Created by Sandaruwani Weerasinghe on 2021-11-25.
//

import SwiftUI

struct HomeView: View {
    
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

    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }

    }
