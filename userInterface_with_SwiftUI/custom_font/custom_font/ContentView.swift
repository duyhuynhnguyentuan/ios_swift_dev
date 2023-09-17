//
//  ContentView.swift
//  custom_font
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 14/09/2023.
//

import SwiftUI

struct ContentView: View {
    @ScaledMetric(relativeTo: .body) var scaledPadding: CGFloat = 0
    @State var inputName = ""
    @State var isViet = false
    @State private var value = 1
    @State private var size = 0.1
    //or can you DateComponent() to create new day instance
    @State var selectedDate = Date()
    //computed property is below var because it is calculated based on the provided logic when it is accessed
    var dateClosedRange: ClosedRange<Date>{
        let min = Calendar.current.date(byAdding: .day,value: -1, to: Date())! //unwrap optional
        let max = Calendar.current.date(byAdding: .day,value: 1, to: Date())!
        return min...max
    }
    @State var reservationDay = Date()
    var body: some View {
        TabView{
            VStack{
                Image("92076DFB-53A5-4D2A-AEF5-9AE1E0F91813_1_105_c")
                Text("Study with dudu").font(Font.custom("Vividlyviethoa", size: 35)).foregroundColor(Color.green)
            }
                .tabItem({Label("Dudu", systemImage: "figure.and.child.holdinghands")})
            SecondView().tabItem({Label("Home", systemImage: "house")})
            VStack {
                //            NavigationView{
                //                NavigationLink(destination: SecondView()){
                //
                //                    Text("Study with me")
                //                        .font(Font.custom("Vividlyviethoa Regular", size: 50, relativeTo: .title))
                //                        .foregroundColor(.orange)
                //
                //                }
                //            }
                //
                HStack{
                    Button("duy"){}.foregroundColor(Color.indigo)
                    Button("huynh"){}.foregroundColor(Color.indigo)
                    Button("nguyen tuan"){}.foregroundColor(Color.indigo)
                }
                .font(Font.custom("Vividlyviethoa Regular", size: 25))
                .padding(scaledPadding)
                
                Form{
                    Label("Name", systemImage: "pencil.line")
                        .labelStyle(.titleAndIcon)
                    
                    TextField("Enter your name here", text: $inputName,onEditingChanged: {
                        status in
                        print("Is user entering name: \(status)")
                    })
                    
                    Button(action: {
                        inputName = ""
                        print("User just clear name!")
                    }) {
                        HStack {
                            Image(systemName: "trash")
                            Text("Clear name")
                        }
                    }
                    Toggle("Are you Viet?", isOn: $isViet)
                        .onChange(of: isViet){ newValue in
                            print(newValue)
                        }
                    Stepper("Number of tasks: \(value)",value: $value, in: 1...10 )
                    VStack{
                        Text("Change size of the word")
                        Text("Study with me").font(Font.custom("Vividlyviethoa Regular", size: size*100))
                        Slider(value: $size)
                        
                    }
                    
                    Section{
                        DatePicker(
                            selection: $selectedDate,
                            in: dateClosedRange,
                            displayedComponents: .date,
                            label: {Text("Due day")}
                        )
                        HStack{
                            DatePicker(selection: $reservationDay,
                                       in: Date()...,
                                       displayedComponents: [.date, .hourAndMinute]
                            ){}
                            Button(action: {print("Done setting reservation day")}){
                                HStack{
                                    Image(systemName: "arrow.right.circle")
                                    Text("Done")
                                }.padding(20)
                            }
                        }
                        Text("Reservation day is \(reservationDay.formatted(date: .abbreviated, time: .shortened))")
                    }
                }.scrollContentBackground(.hidden)
            }.tabItem({Label("Register", systemImage: "square.and.pencil")})
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
