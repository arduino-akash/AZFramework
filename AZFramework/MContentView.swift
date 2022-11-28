//
//  MContentView.swift
//  Maps
//
//  Created by Singh, Akash | RIEPL on 25/11/22.
//

import SwiftUI

public struct MContentView: View {
    
    public init(){
    
    }
    
    public var body: some View {
        NavigationView{
            VStack {
                ScrollView{
                    Link(destination: URL(string: "maps://")!){
                        MMapView()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                    }
                    
                    MCircleImage()
                        .offset(y: -130)
                        .padding(.bottom, -130)
                    
                    VStack(alignment: .leading) {
                        Text("Rakuten India")
                            .font(.title)
                            .bold()
                        
                        HStack {
                            Text("Crimson House, Bangalore")
                                .font(.title)
                            
                            Spacer()
                            Text("India")
                                .font(.caption)
                            
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        
                        Divider()
                        
                        Text("About Rakuten India")
                            .font(.headline)
                        Text("Rakuten India is the Development Centre and key technology hub of the Rakuten Group, Inc. We enable our businesses with our depth of knowledge in multiple streams of technology such as Mobile and Web Development, Web Analytics, Platform Development, Backend Engineering, Data Science, Machine Learning, Artificial Intelligence and much more. With 1700+ employees and growing, Rakuten India is housed in Crimson House Bangalore in the heart of the city.")
                            .font(.headline)
                        
                    }
                    .padding()
                    Spacer()
                }.background(
                    Image("image")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                )            .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct MapsContentView_Previews: PreviewProvider {
    static var previews: some View {
        MContentView()
    }
}

