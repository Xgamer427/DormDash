import SwiftUI

struct searchView: View {
   
    @State private var isSearching = false
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack {
                // Conditionally show the search bar
                if isSearching {
                    TextField("Search listings here...", text: $searchText)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                        .onTapGesture {
                            self.isSearching = true
                        }
                        .transition(.move(edge: .trailing)) // Transition for the appearance of the search bar
                        //.animation(.default)
                        //Line 22: Apparently deprecated in iOS 15... lame. also can not figure out the withAnimation() method, as of April 3rd 2024 @ 21:33
                }

                Spacer()
                // Your content here
            }
            .navigationBarTitle("Title")
            .navigationBarItems(trailing:
                Button(action: {
                    withAnimation {
                        // This toggles the search bar's visibility
                        self.isSearching.toggle()
                    }
                }) {
                    // Use the system image for the button
                    Image(systemName: "magnifyingglass")
                }
            )
        }
    }
}

struct searchView_Previews: PreviewProvider {
    static var previews: some View {
        searchView()
    }
}
