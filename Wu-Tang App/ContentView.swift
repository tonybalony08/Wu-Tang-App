//  ContentView.swift
//  Wu-Tang App
//  Created by CALIXTO, ANTHONY on 4/16/26.

import SwiftUI

struct ContentView: View {
    @State private var enteredName = ""
    @State private var staticCoderNameIs = "Your Wu-Tang Coder Name is:"
    @State private var wuTangName = "Undefined Breakpoint"
    var body: some View {
        VStack {
            Text("Wu-Tang\nCoder Name Generator")
                .font(.title)
                .fontWeight(.black)
                .foregroundStyle(.yellow)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(.bottom)
                .background(.black)
            
            Spacer()
            
            TextField("Enter name here", text: $enteredName)
                .font(.title2)
                .textFieldStyle(.roundedBorder)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.gray, lineWidth: 1)
                }
                .padding()
            
            Button {
                //TODO: Action
            } label : {
                Image("wu-tang-button")
                Text("Get It!")
            }
            .font(.title2)
            .fontWeight(.bold)
            .foregroundStyle(.yellow)
            .buttonStyle(.borderedProminent)
            .tint(.black)
            
            VStack {
                Text(staticCoderNameIs)
                Text(wuTangName)
            }
            
            Spacer()
            
            Image("wu-tang")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    ContentView()
}
