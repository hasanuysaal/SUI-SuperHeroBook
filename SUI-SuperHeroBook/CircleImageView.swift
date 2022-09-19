//
//  CircleImageView.swift
//  SUI-SuperHeroBook
//
//  Created by Hasan Uysal on 19.09.2022.
//

import SwiftUI

struct CircleImageView: View {
    
    var image : Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5)).shadow(radius: 10)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("batman"))
    }
}
