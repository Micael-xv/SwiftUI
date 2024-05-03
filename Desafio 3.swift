import SwiftUI

struct Desafio_3: View {
    @State private var nome: String = ""
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            Image("fundo")
                .resizable()
                .aspectRatio(1 / 1, contentMode: .fill)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
                .saturation(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .blur(radius: 3)
                .opacity(0.2)
            
            VStack{
                Text("Bem vindo, \(nome)")
                    .font(.largeTitle)
                TextField("Digite seu nome aqui", text: $nome)
                    .padding()
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    Image("truck")
                        .resizable()
                        .scaledToFill()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                
                Button("Entrar") {
                    showingAlert = true
                    }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Alerta!"), message: Text("Apenas um teste"), dismissButton: .default(Text("Vamos lá")))
                }
            }
        }
    }
}

#Preview {
    Desafio_3()
}
