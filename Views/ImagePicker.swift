//
//  ImagePicker.swift
//  DormDash
//
//  Created by Brandon Moffitt on 4/11/24.
//

import PhotosUI
import SwiftUI

struct ImagePicker:  View {
    @State private var imageItem: PhotosPickerItem?
    @State private var buttonImage: Image?

        var body: some View {
            VStack {
                PhotosPicker("Select image", selection: $imageItem, matching: .any(of: [.images, .not(.videos)]))
                buttonImage?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
            }
            .onChange(of: imageItem) {
                Task {
                    if let loaded = try? await imageItem?.loadTransferable(type: Image.self) {
                        buttonImage = loaded
                    } else {
                        print("Failed")
                }
            }
        }
    }
}

#Preview {
    ImagePicker()
}
