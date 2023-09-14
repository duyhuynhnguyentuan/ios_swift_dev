//
//  ContentView.swift
//  custom_font
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 14/09/2023.
//

import SwiftUI

struct ContentView: View {
    @ScaledMetric(relativeTo: .body) var scaledPadding: CGFloat = 1
    var body: some View {
        VStack {
        
            Text("Study with me").font(Font.custom("Vividlyviethoa Regular", size: 50, relativeTo: .title))
                .foregroundColor(.orange)
        
            HStack{
                Button("one"){
                    
                }.foregroundColor(Color.indigo)
                Button("two"){
                    
                }.foregroundColor(Color.indigo)
                Button("three"){
                    
                }.foregroundColor(Color.indigo)
            }.font(Font.custom("Vividlyviethoa Regular", size: 25)).padding(scaledPadding)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
