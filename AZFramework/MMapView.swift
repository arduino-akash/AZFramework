//
//  MMapView.swift
//  Maps
//
//  Created by Singh, Akash | RIEPL on 25/11/22.
//

import SwiftUI
import MapKit

public struct MMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 12.9716, longitude: 77.5946),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    public var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MMapView()
    }
}

