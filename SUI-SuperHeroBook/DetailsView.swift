//
//  DetailsView.swift
//  SUI-SuperHeroBook
//
//  Created by Hasan Uysal on 19.09.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var choosedSuperHero : SuperHero
    
    var body: some View {
        
        VStack{
        MapView(coordinate: choosedSuperHero.location)
            .frame(height: UIScreen.main.bounds.height * 0.3)
            .edgesIgnoringSafeArea(.top)
        
        CircleImageView(image: Image(choosedSuperHero.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.23)
                .offset(y: UIScreen.main.bounds.height * -0.18)
                .padding(.bottom, -100)
            
            VStack {
                HStack{
                    Text(choosedSuperHero.name)
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                        Spacer()
                    Text(choosedSuperHero.realName)
                        .font(.largeTitle)
                        .foregroundColor(Color.blue)
                }
                HStack {
                    Text(choosedSuperHero.city)
                        .bold()
                        Spacer()
                    Text(choosedSuperHero.job)
                        .bold()
                }
            }.padding()
                .offset(y: UIScreen.main.bounds.height * -0.1)
            Spacer()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosedSuperHero: batman)
    }
}
