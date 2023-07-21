//
//  RegisterView.swift
//  ToDoSwiftUI
//
//  Created by Anton on 21.07.23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            //MARK: Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       backgound: .orange)
            
            Form {
                TextField("Full name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create account",
                         backgroung: .green, action: {
                    //ACTION Registraion
                })
            }
            .offset(y: -50)
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
