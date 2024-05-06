//
//  CinzaView.swift
//  desafio 5
//
//  Created by Turma01-22 on 06/05/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack {
            Color(.gray)
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintpalette.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.gray)
                .padding(60)
                .background(Color(.black))
                .clipShape(Circle())
        }    }
}

#Preview {
    CinzaView()
}
