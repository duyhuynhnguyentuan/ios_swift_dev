//
//  RotationGesture.swift
//  gestures_in_depth
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 19/09/2023.
//

import SwiftUI

struct Rotation_Gesture: View {
    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero
    var body: some View {
        Image("92076DFB-53A5-4D2A-AEF5-9AE1E0F91813_1_105_c")
            .resizable().frame(width: 300, height: 250)
               .rotationEffect(amount + finalAmount)
               .gesture(
                   RotationGesture()
                       .onChanged { value in
                           amount = value
                       }
                       .onEnded { value in
                           finalAmount += amount
                           amount = .zero
                       }
               )
    }}

struct Rotation_Gesture_Previews: PreviewProvider {
    static var previews: some View {
        Rotation_Gesture()
    }
}
