//
//  MCircleView.swift
//  Maps
//
//  Created by Singh, Akash | RIEPL on 25/11/22.
//

import SwiftUI

public struct MCircleImage: View {
   public var body: some View {
        Image("rakuten")
            .frame(width: 200, height: 200)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct MCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        MCircleImage()
    }
}
