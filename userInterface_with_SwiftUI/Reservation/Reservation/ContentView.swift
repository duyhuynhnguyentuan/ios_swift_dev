//
//  ContentView.swift
//  Reservation
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 09/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 1
    
    var body: some View {
        VStack {
            MyView()
            Text("Little Lemon")
            Text("Reservation")
            Stepper {
                Text("Reservation for: \(personCount)")
                
            } onIncrement: {
                personCount += 1
            } onDecrement: {
                personCount = (personCount == 1) ? 1 : personCount - 1
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(personCount: 10)
    }
}
