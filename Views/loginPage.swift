//
//  loginPage.swift
//  DormDash
//
//  Created by Brandon Moffitt on 4/10/24.
//

import SwiftUI


struct loginPage: View {
    @State private var searchText1 = ""
    @State private var searchText2 = ""
    @State private var isSearching = false
    @State private var errorMessage = ""
    private var username = ""
    private var password = ""
    var body: some View {
        VStack {
            TextField("Username", text: $searchText1)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isSearching = true
                }
            .transition(.move(edge: .trailing))
            TextField("Password", text: $searchText2)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isSearching = true
                }
                .transition(.move(edge: .trailing))
            Text($errorMessage)
                .foregroundColor(Color.red)
            Button(action: {
                if($searchText1 == username && $searchText2 == password) {
                    homePage()
                } else {
                    errorMessage = "Incorrect username or password"
                }
            }, label: {
                Text("Login")
            })
        }
    }
}

#Preview {
    loginPage()
}
