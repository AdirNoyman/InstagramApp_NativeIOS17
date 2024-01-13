//
//  HomeFeedView.swift
//  InstagramApp
//
//  Created by Adir Noyman on 13/01/2024.
//

import SwiftUI

struct HomeFeedView: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack {
                    
                    StoriesView()
                    
                    ForEach(0...30,id: \.self) {num in
                        
                        PostView()
                            .padding(.bottom, 20)
                    }
                    
                }
            }
            .navigationTitle("Instagram")
        }
    }
}


#Preview {
    HomeFeedView()
}


struct PostView: View {
    var body: some View {
        
        VStack {
            
            HStack {
                
                // user profile picture and username
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40,height: 40,alignment: .center)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Adiros")
                    .foregroundColor(.blue)
                    .bold()
                
                
                Spacer()
                
            }
            .padding(25)
            
            // image
            Image("lion")
                .frame(width: 430,height: 430,alignment: .center)
                .background(Color(.secondarySystemBackground))
            
            HStack {
                
                // action buttons: like, comment, share
            }
            
            
            HStack {
                
                // likes count
            }
            
            // Comments
            
        }
       
        
    }
}
