//
//  imageView.swift
//  DormDash
//
//  Created by Brandon Moffitt on 4/11/24.
//
import SwiftUI

struct imageView: View {
    @State private var showingImagePicker = false
    @State private var image: UIImage?

    var body: some View {
        VStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else {
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 200)
                    .onTapGesture {
                        showingImagePicker = true
                    }
            }
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker(selectedImage: $image)
        }
    }
}

//#Preview {
//
//}
