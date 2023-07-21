//
//  HeaderView.swift
//  ToDoSwiftUI
//
//  Created by Anton on 21.07.23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(.degrees(15))
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                
                Text("Get things done")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 30)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
