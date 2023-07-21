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
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log in",
                             backgroung: .blue)
                    {
                        viewModel.login()
                        
                    }
                    
                }
                .offset(y: -50)
                //.frame(height: 200)
                
                //MARK: Create account
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                //.frame(height: 5,alignment: .bottom)
                
                
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
