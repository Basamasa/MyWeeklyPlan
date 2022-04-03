//
//  ContentView.swift
//  MyWeeklyPlan
//
//  Created by Anzer Arkin on 01.04.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView([.horizontal, .vertical]) {
            VStack(spacing: 20) {
                HStack(spacing: 20) {
                    ForEach(0..<10) {
                        Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.largeTitle)
//                            .frame(width: 200, height: 200)
                            .background(Color.red)
                    }
                }
                HStack(spacing: 20) {
                    ForEach(0..<10) {
                        Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.largeTitle)
//                            .frame(width: 200, height: 200)
                            .background(Color.red)
                    }
                }
            }
        }
//        .frame(height: 350)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
