//
//  ContentView.swift
//  SUI-SuperHeroBook
//
//  Created by Hasan Uysal on 19.09.2022.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            List(superHeroArr) { superHero in
                NavigationLink {
                    DetailsView(choosedSuperHero: superHero)
                } label: {
                    ListRowView(superHero: superHero)
                }

            }.navigationTitle("SuperHero Book")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListView()
                .previewDevice("iPhone 11")
                .previewDisplayName("iPhone 11")
            
            ListView()
                .previewDevice("iPhone 8")
                .previewDisplayName("iPhone 8")
        }
        
    }
}
