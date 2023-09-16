//
//  SecondView.swift
//  custom_font
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 16/09/2023.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Text("Study with me")
        .font(Font.custom("Vividlyviethoa Regular", size: 50, relativeTo: .title))
        .foregroundColor(.orange)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
