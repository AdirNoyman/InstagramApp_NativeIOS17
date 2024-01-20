//
//  ExploreView.swift
//  InstagramApp
//
//  Created by Adir Noyman on 13/01/2024.
//

import SwiftUI

struct ExploreView: View {
    
    @State var text = ""
    
    var imageName = (1...4).map({"nature\($0)"})
    
    var columns: [GridItem] = [
        GridItem(.flexible(minimum: 200)),
        GridItem(.flexible(minimum: 200))

    ]
    
    var body: some View {
        NavigationView {
            VStack {
                
                TextField(
                    "Search...",
                    text: $text
                )
                .padding(10)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(12)
                .padding()
                
                
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns, content: {
                        ForEach(0...20, id: \.self) {num in
                            
                            let name = imageName.randomElement() ?? "nature1"
                            
                            NavigationLink(destination: PostView(userName: "Adiros", userImage: "man1", postImage: name), label: {
                                Image(name)
                                    .resizable()
                                    .frame(width: 200,height: 200, alignment: .center)
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.purple)
                            })
                                
                        }
                    })
                }
            }
            .navigationTitle("Explore")
            
        }
    }
}

#Preview {
    ExploreView()
}
