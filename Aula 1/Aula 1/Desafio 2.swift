import SwiftUI

struct Desafio_2: View {
    var body: some View {
        VStack {
            HStack {
                Image("nada")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding()
                VStack(spacing: 10) {
                    Text("alguma coisa")
                        .foregroundStyle(.red)
                    Text("nada")
                        .foregroundStyle(.cyan)
                    Text("teste")
                        .foregroundStyle(.blue)
                }
            }
        }
        .padding()
    }
}

#Preview {
    Desafio_2()
}
