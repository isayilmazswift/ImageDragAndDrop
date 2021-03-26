//
//  ContentView.swift
//  DragImage
//
//  Created by İsa Yılmaz on 26.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var image = ImageModel(image: "deneme")
    var body: some View {
        MovePage(image: image)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
