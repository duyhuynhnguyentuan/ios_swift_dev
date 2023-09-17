//
//  DetailView.swift
//  custom_font
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 17/09/2023.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
                    NavigationView{
                        NavigationLink(destination: SecondView()){
        
                            Text("Study with me")
                                .font(Font.custom("Vividlyviethoa Regular", size: 50, relativeTo: .title))
                                .foregroundColor(.orange)
        
                        }
                    }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
