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
            Text("I am Mark")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
