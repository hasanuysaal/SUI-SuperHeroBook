//
//  MapView.swift
//  SUI-SuperHeroBook
//
//  Created by Hasan Uysal on 19.09.2022.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    // the first function to use UIViewRepresntable
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    // the second function to use UIViewRepresntable
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    
    
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: superHeroArr[0].location)
    }
}


// < iOS 14
/*
 
 struct MapView: View {
     
     @State var region = MKCoordinateRegion(center: superHeroArr[0].location, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
     
     var body: some View {
         Map(coordinateRegion: $region)
     }
 }

 struct MapView_Previews: PreviewProvider {
     static var previews: some View {
         MapView()
     }
 }
 
 */
