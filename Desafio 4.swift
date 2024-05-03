import SwiftUI

struct Desafio_4: View {
    @State private var peso: Double = 1
    @State private var altura: Double = 1
    @State private var showingAlert = false
    @State private var cor: Color = .green
    @State private var texto: String = ""
    
    var body: some View {
        ZStack{
            Color(cor)
                .ignoresSafeArea(.all)
            VStack{
                Text("Calcular o IMC")
                    .font(.largeTitle)
                
                TextField("Digite seu peso", value: $peso, format: .number)
                    .frame(width: 350, height: 35)
                    .background(.white)
                    .cornerRadius(15)
                    .padding()
                    .multilineTextAlignment(.center)
                   
                
                TextField("Digite seu altura", value: $altura, format: .number)
                    .frame(width: 350, height: 35)
                    .background(.white)
                    .cornerRadius(15)
                    .padding()
                    .multilineTextAlignment(.center)
               
                
                Button("Calcular") {
                    let imc = peso/(altura*altura)
                    if(imc < 18.5) {
                        texto = ("Baixo peso")
                        cor = .green
                    } else if (imc >= 18.5 && imc < 24.99) {
                        texto = ("Normal")
                        cor = Color("green-normal")
                    }
                    else if(imc >= 25 && imc < 29.99){
                        texto = ("Sobrepeso")
                        cor = .red
                    }
                    else if (imc > 30){
                        texto = ("Obesidade")
                        cor = Color("red-obecidade")
                    }
                }
                .frame(width: 100, height: 45)
                .background(.blue)
                .cornerRadius(15)
                .foregroundColor(.white)
                
            Spacer()
            
        }
            
            VStack{
                Spacer()
                Spacer()
                Text(texto)
                Spacer()
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 200)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    Desafio_4()
}
