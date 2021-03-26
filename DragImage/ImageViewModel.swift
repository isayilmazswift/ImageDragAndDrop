//
//  PageViewModel.swift
//  DragImage
//
//  Created by İsa Yılmaz on 26.03.2021.
//

import SwiftUI

class ImageViewModel: ObservableObject {
    
    @Published var selectedTab = "tabs"
    
    @Published var images = [
        
        ImageModel(image: "deneme"),
        ImageModel(image: "grid"),
        ImageModel(image: "deneme"),
        ImageModel(image: "grid"),
        ImageModel(image: "deneme"),
        ImageModel(image: "grid"),
        ImageModel(image: "deneme"),
        ImageModel(image: "grid"),
        

    ]
    
    @Published var currentPage : ImageModel?
}

