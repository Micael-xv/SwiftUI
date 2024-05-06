//
//  AzulView.swift
//  desafio 5
//
//  Created by Turma01-22 on 06/05/24.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack {
            Color(.blue)
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush.pointed.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
                .padding(30)
                .background(Color(.black))
                .clipShape(Circle())
        }
    }
}

#Preview {
    AzulView()
}
