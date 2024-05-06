import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack {
            Color(.pink)
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.pink)
                .padding(30)
                .background(Color(.black))
                .clipShape(Circle())
                
        }
    }
}

#Preview {
    RosaView()
}
