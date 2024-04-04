//
//  loginPage.swift
//  DormDash
//
//  Created by Brandon Moffitt on 3/22/24.
//

import SwiftUI

struct homePage: View {
    @State private var isSearching = true
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 50)
                Button(action: {
                    if isSearching {
                        TextField("Search listings here...", text: $searchText)
                            .padding(7)
                            .padding(.horizontal, 25)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .padding(.horizontal, 10)
                            
                            }
                         
                            //.animation(.default)
                            //Line 22: Apparently deprecated in iOS 15... lame. also can not figure out the withAnimation() method, as of April 3rd 2024 @ 21:33
                    
                }, label: {
                    Image(systemName: "magnifyingglass")
                       
                    
                })
                }
                Spacer(minLength: 10)
            }
            Spacer(minLength: 50)
            
            HStack {
                Image("room1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Rectangle())
                        .overlay(Rectangle().stroke(Color.black, lineWidth: 4))
                Text("This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now")
                   
            }
            
            HStack {
                Spacer()
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 150)
                Text("This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now")
                    
            }
            Spacer()
            HStack {
                Spacer()
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 150)
                Text("This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now")
                   
            }
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    //no clue where to start
                }, label: {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 150, height: 150)
                })
                Text("This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now")
                    
            }
            Spacer()
    
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
