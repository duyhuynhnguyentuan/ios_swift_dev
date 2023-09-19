//
//  ContentView.swift
//  gestures_in_depth
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 19/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var offsetValue = CGSize.zero
    var body: some View {
        VStack{
            //            Text("Little lemon restaurant").onTapGesture(count: 2) {
            //                print("text tapped!")
            //            }
            Text("Little Lemon Restaurant")
                .onLongPressGesture(minimumDuration: 3, maximumDistance: 10, perform: {
                    print("Long Press Detected!")
                },
                                    onPressingChanged: { state in
                    print (state)
                })
            Image("92076DFB-53A5-4D2A-AEF5-9AE1E0F91813_1_105_c").resizable().frame(width: 300, height: 250).offset(offsetValue).gesture(
            DragGesture()
                .onChanged{
                    gesture in
                    offsetValue = gesture.translation
                }
            )
           Rotation_Gesture()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
