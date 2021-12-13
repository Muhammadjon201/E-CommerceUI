//
//  ContentView.swift
//  E-CommerceUI
//
//  Created by Muhammadjon Mamarasulov on 12/7/21.
//

import SwiftUI

struct ContentView: View {
    @State var textField:String = ""
    var body: some View {
        ZStack(alignment: .bottom){
            
            // This is a top bar view
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .foregroundColor(.secondary)
                        .background(Color.white)
                        .frame(width: 25, height: 25)
                        
                    Spacer()
                    TextField("Select Burger", text: $textField)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.secondary)
                        .cornerRadius(10)
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.secondary)
                        .clipShape(Circle()).shadow(radius: 10)
                }.padding()
                // This shows menu and results
                Text("Burger King Menu").font(.title).foregroundColor(.secondary)
                Text("31 Results").font(.title).foregroundColor(.primary)
                
                // ScrollView which shows items
                ScrollView(.vertical, showsIndicators: false) {
                    HStack(spacing: 20) {
                        Burgers()
                        Burgers()
                    }
                    HStack(spacing: 20) {
                        Burgers()
                        Burgers()
                    }
                    HStack(spacing: 20) {
                        Burgers()
                        Burgers()
                    }
                }
           
            }.padding()
            .edgesIgnoringSafeArea(.bottom)
            
            // Cart
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .resizable()
                    .frame(width: 12, height: 12)
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
                Text("5 items").foregroundColor(.white)
                    .padding(.horizontal)
            }).background(Color.black.opacity(0.8))
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
        }
    }
}

// Menu Items for using inside of ContentView..
struct Burgers: View {
    var body: some View {
        VStack() {
            Image("BurgerKing").resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 157, height: 165)
            Text("Classic").font(.headline)
            Text("Whopper").foregroundColor(.secondary)
                .font(.subheadline).padding(.bottom, 10)
            Text("$5.5").font(.subheadline)
        }.frame(width: 160, height: 250)
        .background(Color.secondary.opacity(0.3))
        .cornerRadius(15)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

