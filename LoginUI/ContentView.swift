//
//  ContentView.swift
//  LoginUI
//
//  Created by faiz on 28/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("co_nf")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                HandleView()
                FormBox()
            }
        }
    }
}

struct HandleView: View {
    var body: some View{
        VStack{
            Image(systemName: "hand.draw.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .background(Color.black)
                .foregroundColor(Color.orange)
                .padding()
                .background(Color.black)
                .cornerRadius(20)
            
            Text("Hello Swift").foregroundColor(Color.white)
        }
    }
}

struct FormBox: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View{
        VStack(alignment: .leading){
            Text("Username").font(.callout).bold()
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("Hello button")}){
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            }
            
            
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(Color.white)
        }
        .padding(.all, 20)
        .background(Color.orange)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
