import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                    .foregroundColor(.red)
                let sophisticatedString = try!
                AttributedString(
                    markdown:
                        "**Little Lemon** Restaurant"
                )
                Text(sophisticatedString).font(.system(size: 29,weight: .ultraLight, design: .serif))
                    .italic()
                    .lineLimit(1)
            
         Text("Little Matcha Restaurant")
                .font(.title)
                .foregroundColor(.gray)
                .padding([.top,.bottom],20)
                .background(Color.black)
                .padding(.init(top: 20, leading: 20, bottom: 20, trailing: 20))
                .background(Color.gray)
                .fixedSize(horizontal: false, vertical: true)
            Label("Lightning", systemImage: "bolt.fill")
        }
        VStack{
            
        }
    }
}
