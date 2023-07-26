//
//  LoginView.swift
//  ToDoSwiftUI
//
//  Created by Anton on 21.07.23.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //MARK: Header
                HeaderView(title: "Login",
                           subtitle: "Get things done",
                           angle: 15,
                           backgound: .pink)
                
                //MARK: Login Form
                
                VStack {
                    
                        if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage)
                                .foregroundColor(.red)
                        }
                    
                        TextField("Email Adress", text: $viewModel.email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .textInputAutocapitalization(.none)
                            .autocorrectionDisabled()
                            .padding()
                        
                        
                        SecureField("Password", text: $viewModel.password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading)
                            .padding(.trailing)
                    
                        TLButton(title: "log in", backgroung: .blue, action: viewModel.login)
                            .frame(width: 150, height: 70)
                    
                }
                .offset(y: -60)
                //.frame(height: 200)
                
                
                //MARK: Create account
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account",
                                   destination: RegisterView())
                }
                //.padding(.bottom, 10)
//                .frame(width: 150, height: 20)
                
                
                Spacer()
            }
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
