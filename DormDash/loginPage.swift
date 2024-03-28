//
//  loginPage.swift
//  DormDash
//
//  Created by Brandon Moffitt on 3/22/24.
//

import SwiftUI

struct loginPage: View {
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 50)
                Button(action: {
                    //add functionality later
                }) {
                    Image(systemName: "magnifyingglass")
                }
                Spacer(minLength: 10)
            }
            Spacer(minLength: 50)
            HStack {
                Spacer()
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 150)
                Text("This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now")
                    .frame(width: 250)
            }
            Spacer()
            HStack {
                Spacer()
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 150)
                Text("This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now")
                    .frame(width: 250)
            }
            Spacer()
            HStack {
                Spacer()
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 150)
                Text("This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now")
                    .frame(width: 250)
            }
            Spacer()
            HStack {
                Spacer()
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 150)
                Text("This here is what we call placeholder text, and it is \nhere because I do not know what else to put for now")
                    .frame(width: 250)
            }
        }
    }
}

#Preview {
    loginPage()
}
