//
//  ListRowView.swift
//  SUI-SuperHeroBook
//
//  Created by Hasan Uysal on 19.09.2022.
//

import SwiftUI

struct ListRowView: View {
    
    var superHero : SuperHero
    
    var body: some View {
        HStack {
            Image(superHero.imageName)
                .resizable()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
                .overlay(Circle().stroke())
                .padding()
            Text(superHero.name)
                .bold()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(superHero: batman)
    }
}
