//
//  LoginView.swift
//  ToDoSwiftUI
//
//  Created by Anton on 21.07.23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                //MARK: Header
                HeaderView()
                
                //MARK: Login Form
                
                Form {
                    TextField("Email Adress", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Attempt login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            
                            Text("Log in")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    .padding()

                }
                
                //MARK: Create account
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 30)
                
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
