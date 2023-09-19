//
//  Sequenced.swift
//  gestures_in_depth
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 19/09/2023.
//

import SwiftUI

struct Sequenced: View {
    @State private var message = "You can long press and then drag"


    var body: some View {
        let longPress = LongPressGesture()
            .onEnded { _ in
            print("Long Press detected. Now you can drag me")
            }


        let drag = DragGesture()
            .onChanged{ _ in
                print ("Dragging…")
            }


        let sequence = longPress.sequenced(before: drag)


        Image("92076DFB-53A5-4D2A-AEF5-9AE1E0F91813_1_105_c")
            .resizable().frame(width: 300, height: 250)
        .gesture(sequence)
    }
}

struct Sequenced_Previews: PreviewProvider {
    static var previews: some View {
        Sequenced()
    }
}
