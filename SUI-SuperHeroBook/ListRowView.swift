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
                .frame(width: 75, height: 75, alignment: .leading)
                .clipShape(Circle())
                .overlay(Circle().stroke())
                .padding()
            Text(superHero.name)
                .bold()
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListRowView(superHero: batman)
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraLarge)
            
            ListRowView(superHero: superman)
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .medium)
                
            ListRowView(superHero: ironman)
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraSmall)
            
            ListRowView(superHero: spiderman)
                .previewLayout(.sizeThatFits)
        }
        
    }
}
