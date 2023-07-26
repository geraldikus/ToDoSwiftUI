//
//  RegisterView.swift
//  ToDoSwiftUI
//
//  Created by Anton on 21.07.23.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack {
            //MARK: Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       backgound: .orange)
            
            VStack {
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .padding()
                
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading)
                    .padding(.trailing)
                
                TLButton(title: "Create account",
                         backgroung: .green, action: {
                    //ACTION Registraion
                    viewModel.register()
                })
                .frame(width: 200, height: 70)
            }
            .offset(y: -70)
            
            //.frame(height: 250)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
