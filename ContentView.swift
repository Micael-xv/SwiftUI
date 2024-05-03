//
//  ContentView.swift
//  Aula 1
//
//  Created by Turma01-22 on 02/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding()
                Spacer()
                
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .padding()
                    .foregroundColor(.red)
            }
            Spacer()
            HStack{
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .foregroundColor(.brown)
                    .padding()
                Spacer()
                
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .padding()
                    .foregroundColor(.green)
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
