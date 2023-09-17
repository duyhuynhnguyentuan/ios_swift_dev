//
//  SecondView.swift
//  custom_font
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 16/09/2023.
//

import SwiftUI

struct SecondView: View {
    let elements = ["Reservation", "Contacts", "Restaurant Locations"]
    var body: some View {
        List{
            Section(header: Text("Important Information")){
                Text("This list shows information about our restaurant page").font(.headline).multilineTextAlignment(.center)
            }
            ForEach(elements, id: \.self){ element in
                NavigationLink(destination: DetailView()){
                    Text(element)
                }
            }
            Section(footer: Text("For more information")){
                Text("Contact dudu at (0835488888)")
            }
        }.scrollContentBackground(.hidden)
            .padding()
            .listStyle(.automatic)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
