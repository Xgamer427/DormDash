//
//  loginPage.swift
//  DormDash
//
//  Created by Brandon Moffitt on 3/22/24.
//
import PhotosUI
import SwiftUI

struct profilePage: View {
    @State private var isSearching = false
    @State private var searchText = ""
    @State private var imageItem1: PhotosPickerItem?
    @State private var imageItem2: PhotosPickerItem?
    @State private var imageItem3: PhotosPickerItem?
    @State private var imageItem4: PhotosPickerItem?
    @State private var buttonImage1: Image?
    @State private var buttonImage2: Image?
    @State private var buttonImage3: Image?
    @State private var buttonImage4: Image?
    @State public var description1 = "This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now"
    @State public var description2 = "This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now"
    @State public var description3 = "This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now"
    @State public var description4 = "This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now"
    
    var body: some View {
        VStack {
            Text("Profile")
                .font(.title)
            VStack {
                HStack {
                    Spacer(minLength: 325)
                    
                    Button(action: {
                        isSearching.toggle()
                        
                        if isSearching {
                            TextField("Search listings here...", text: $searchText)
                                .padding(7)
                                .padding(.horizontal, 25)
                                .background(Color(.systemGray6))
                                .cornerRadius(8)
                                .padding(.horizontal, 10)
                                .transition(.move(edge: .trailing))
                                .onTapGesture {
                                    self.isSearching = true
                                }
                            
                            
                        }
                        
                        //.animation(.default)
                        //Line 22: Apparently deprecated in iOS 15... lame. also can not figure out the withAnimation() method, as of April 3rd 2024 @ 21:33
                        
                    }, label: {
                        Image(systemName: "magnifyingglass")
                            .frame(width: 50, height: 50, alignment: .trailing)
                        
                    })
                    .sheet(isPresented: $isSearching, onDismiss: {}, content: {
                        searchView()
                    })
                    Spacer(minLength: 10)
                }
                Spacer(minLength: 50)
                
                HStack {
                    Spacer()
                    VStack {
                        PhotosPicker("Select image", selection: $imageItem1, matching: .any(of: [.images, .not(.videos)]))
                        buttonImage1?
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                    }
                    .onChange(of: imageItem1) {
                        Task {
                            if let loaded = try? await imageItem1?.loadTransferable(type: Image.self) {
                                buttonImage1 = loaded
                            } else {
                                print("Failed")
                            }
                        }
                }
                    TextField("Enter description here", text: $description1)
                    
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        PhotosPicker("Select image", selection: $imageItem2, matching: .any(of: [.images, .not(.videos)]))
                        buttonImage2?
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                    }
                    .onChange(of: imageItem2) {
                        Task {
                            if let loaded = try? await imageItem2?.loadTransferable(type: Image.self) {
                                buttonImage2 = loaded
                            } else {
                                print("Failed")
                            }
                        }
                }
                    TextField("Enter description here", text: $description2)
                    
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        PhotosPicker("Select image", selection: $imageItem3, matching: .any(of: [.images, .not(.videos)]))
                        buttonImage3?
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                    }
                    .onChange(of: imageItem3) {
                        Task {
                            if let loaded = try? await imageItem3?.loadTransferable(type: Image.self) {
                                buttonImage3 = loaded
                            } else {
                                print("Failed")
                            }
                        }
                }
                    TextField("Enter description here", text: $description3)
                    
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        PhotosPicker("Select image", selection: $imageItem4, matching: .any(of: [.images, .not(.videos)]))
                        buttonImage4?
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                    }
                    
                        .onChange(of: imageItem4) {
                            Task {
                                if let loaded = try? await imageItem4?.loadTransferable(type: Image.self) {
                                    buttonImage4 = loaded
                                } else {
                                    print("Failed")
                                }
                            }
                    }
                    
                    TextField("Enter description here", text: $description4)
                    
                }
                Spacer()
                
                
                    
            }
            
        }
        /**
         HStack  {
                VStack {
                    Text(description1)
                    Text(description2)
                    Text(description3)
                    Text(description4)
                }
                        VStack {
                            PhotosPicker(selection: $imageItems, maxSelectionCount: 4, matching: .images) {
                            Image(systemName: "photo.on.rectangle.angled")
                        }
                        
         }
         */
    }
}
#Preview {
    homePage()
}
/**
 Not currently working as of Wednesday April 3rd 2024 @ 21:28
 More researching is required, shoul function like this:
    Step 1: User clicks on gray rectangle
    Step 2: User is prompted to take photo or choose from library
    Step 3: Gray rectangle changes to uploaded / recently taken picture
 */
