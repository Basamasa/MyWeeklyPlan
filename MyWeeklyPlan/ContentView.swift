//
//  ContentView.swift
//  MyWeeklyPlan
//
//  Created by Anzer Arkin on 01.04.22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            Table()
            .navigationTitle("My weekly plan")

        }
//        .frame(height: 350)
    }
}

struct Table: View {
    let times: [String] = ["6:00", "8:00", "10:00", "12:00", "14:00", "16:00", "18:00", "20:00", "22:00", "24:00"]
    
    var body: some View {
        ScrollView([.horizontal, .vertical]) {
            VStack(spacing: 10) {
                HStack(spacing: 10) {
                    Spacer()
                    Weedays()
                }
                ForEach(times, id: \.self) { time in
                    HStack(spacing: 10) {
                        VStack(){
                            Spacer()
                            Times(time: time)
                                .frame(width: 36)
                                .offset(x: 0, y: 13)
                        }
                        ForEach(0..<7) { index in
                            TimeSlot(item: index)
                        }
                    }

                }
            }
        }
    }
}

struct MyDatePicker: View {
    @State private var date = Date()

    var body: some View {
        VStack {
            Text("Enter your birthday")
                .font(.largeTitle)
            DatePicker("Enter your birthday", selection: $date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .frame(maxHeight: 400)
        }
    }
}

struct Times: View {
    @State var time: String
    
    var body: some View {
        Text("\(time)")
            .foregroundColor(.black)
            .bold()
            .font(.caption)
//                .frame(width: 100)
    }
}

struct Weedays: View {
    let weekNames: [String] = ["Mon", "Tue", "Wed", "Thus", "Fri", "Sat", "Sun"]
    
    var body: some View {
        ForEach(weekNames, id: \.self) { name in
            Text("\(name)")
                .foregroundColor(.black)
                .bold()
                .font(.title3)
                .frame(width: 100)
        }
    }
}

struct TimeSlot: View {
    @State var item: Int
    var body: some View {
        Text("Item \(item)")
            .foregroundColor(.white)
            .font(.largeTitle)
            .frame(width: 100, height: 100)
            .background(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
