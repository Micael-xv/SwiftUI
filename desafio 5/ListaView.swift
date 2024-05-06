import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationView{
            List {
                HStack{
                    Text("item")
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                }
                HStack{
                    Text("item")
                    Spacer()
                    Image(systemName: "paperplane.fill")
                }
                HStack{
                    Text("item")
                    Spacer()
                    Image(systemName: "play.rectangle.on.rectangle.circle.fill")
                }
            }
            .navigationTitle("Lista")
        }
    }
}

#Preview {
    ListaView()
}
