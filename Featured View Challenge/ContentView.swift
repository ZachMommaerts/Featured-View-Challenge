//
//  ContentView.swift
//  Featured View Challenge
//
//  Created by Zach Mommaerts on 4/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            TabView {
                ForEach(1...50, id: \.self){ index in
                    let randRed = Double.random(in: 0..<1)
                    let randGreen = Double.random(in: 0..<1)
                    let randBlue = Double.random(in: 0..<1)
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(red: randRed, green: randGreen, blue: randBlue))
                                .cornerRadius(20)
                                .shadow(radius: 10)
                            Image(systemName: "\(index).circle")
                                .resizable()
                                .scaledToFit()
                                .padding()
                        }
                        .frame(width: geo.size.width - 40, height: geo.size.height - 100)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
