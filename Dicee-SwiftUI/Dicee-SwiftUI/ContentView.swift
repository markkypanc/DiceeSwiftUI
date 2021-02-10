//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Mark Rachapoom on 11/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                // Logo
                Image("diceeLogo")
                
                Spacer()
                
                // Two dices
                HStack {
                    DiceView(n: 4)
                    DiceView(n: 1)
                }
                    .padding(.all)
                
                Spacer()
                
                // Button
                Button(action: {}) {
                    Text("Roll")
                        .font(.system(size: 23))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .frame(width: 300, height: 50, alignment: .center)
                }
                .background(Color(.red))
                .cornerRadius(17)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}
