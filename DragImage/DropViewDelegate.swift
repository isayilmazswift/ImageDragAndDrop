//
//  DropViewDelegate.swift
//  DragImage
//
//  Created by İsa Yılmaz on 26.03.2021.
//

import SwiftUI

struct DropViewDelegate: DropDelegate {

    var imageModel: ImageModel
    var imageData: ImageViewModel

    func performDrop(info: DropInfo) -> Bool {
        imageData.currentPage = nil
        
        return true
    }
    
    func dropEntered(info: DropInfo) {
        if imageData.currentPage == nil {
            imageData.currentPage = imageModel
        }
       
        
        //from index
        let fromIndex = imageModel.image.firstIndex{ (page) -> Bool in
            return imageModel.id == imageData.currentPage?.id
            
        }
        
        //to index
        let toIndex = imageModel.image.firstIndex{ (page) -> Bool in
            return imageModel.id == self.imageModel.id
            
        }
        
        
        
    }
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .move)
    }
}
