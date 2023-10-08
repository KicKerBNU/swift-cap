//
//  ContentView.swift
//  CapFun
//
//  Created by Everton Buzzi on 08/10/2023.
//

import SwiftUI

struct ContentView: View {
    class Dog {
        var name: String = ""
        var age: Int = 0
        var furColor: String = ""
    }
    
    
    
    @State var userText = "Test"
    @State var capMode = 1
    var body: some View {
        Spacer()
        if (capMode == 1) {
            Text(userText.uppercased())
                .font(.largeTitle)
            
        }
        if (capMode == 2) {
            Text(userText.capitalized)
                .font(.largeTitle)
            
        }
        if (capMode == 3) {
            Text(userText.lowercased())
                .font(.largeTitle)
            
        }
        Spacer()
        Button(action: {
            let pasteboard = UIPasteboard.general
            
            if (capMode == 1) {
                pasteboard.string = userText.uppercased()
                
            }
            if (capMode == 2) {
                pasteboard.string = userText.capitalized
                
            }
            if (capMode == 3) {
                pasteboard.string = userText.lowercased()
                
            }
        }) {
            CustomButtonView(title: "Copy", color: .orange)
        }
        
            .padding()
        HStack {
            
            Button(action: {
                capMode = 1;
            }){
                CustomButtonView(title: "ALL CAPS", color: .red)
            }
            Button(action: {
                capMode = 2;
            }){
                CustomButtonView(title: "First Letter", color: .green)
            }
            Button(action: {
                capMode = 3;
            }){
                CustomButtonView(title: "lowercase", color: .blue)
            }
            
            
        }
        .padding()
        TextField("Enter textt here", text: $userText)
            .padding()
        
    }
}

#Preview {
    ContentView()
}
