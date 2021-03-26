//
//  MovePage.swift
//  DragImage
//
//  Created by İsa Yılmaz on 26.03.2021.
//

import SwiftUI

struct MovePage: View {
    
    @StateObject var imageData = ImageViewModel()
    @Namespace var animation
    @State var image : ImageModel
    
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 45), count: 3)
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    LazyVGrid(columns: columns, spacing: 20, content: {
                        
                        ForEach(imageData.images){ img in
                            Image(img.image)
                                .resizable()
                                .frame(width: 100, height: 100, alignment: .center)
                                .cornerRadius(15)
                                .onDrag({
                                
                                    return NSItemProvider()
                                })
                                .onDrop(of: [.url], delegate: DropViewDelegate(imageModel: image, imageData: imageData))
                        }
                    })
                }
            }
            .navigationTitle("Grids")
        }
    }
}

