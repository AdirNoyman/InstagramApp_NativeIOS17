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
                    
                    ForEach(1...4,id: \.self) {num in
                        
                        PostView(userName: " man\(num)", userImage: "man\(num)", postImage: "nature\(num)")
                            .padding(.bottom, 20)
                    }
                    
                }.padding(.top,10)
            }
            .navigationTitle("Instagram")
        }
    }
}


#Preview {
    HomeFeedView()
}


struct PostView: View {
    
    let userName: String
    let userImage: String
    let postImage: String
    
    var body: some View {
        
        VStack {
            
            PostHeaderView(userImageName: userName,imageName: userImage )
            
            // image
            Image(postImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 430,height: 430,alignment: .center)
                .background(Color(.secondarySystemBackground))
            
            PostActionButtonsView()
            
            
            HStack {
                
                // likes count
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(.red)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20,height: 20,alignment: .center)
                Text("32 likes")
                    .font(.system(size: 20))
                    .foregroundColor(Color(.link))
                Spacer()
            }.padding().padding(.top,-10).padding(.leading,15)
            
            HStack {
                
                // Caption
                Text("Oh hello Adiros 🤓 #swiftui")
                    .font(.headline)
                    Spacer()
            }.padding(.top, -15).padding(.leading,30)
                
                
                // Comments
            HStack {
                // Date
                Text("1 hour ago")
                    .foregroundColor(Color(.secondaryLabel))
                Spacer()
            }.padding(.leading,30)
            
            
        }
       
        
    }
}

struct PostActionButtonsView: View {
   
    
    var body: some View {
        
        HStack {
            
            // action buttons: like, comment, share
            PostActionButtonView(actionName: "heart")
            PostActionButtonView(actionName: "message")
            PostActionButtonView(actionName: "square.and.arrow.up")
           
            
            Spacer()
        }.padding(.leading, 30).padding(.top,10)
        
      
    }
}

struct PostActionButtonView: View {
    
    var actionName: String
    
    var body: some View {
       
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: actionName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30,height: 30,alignment: .center)
                .foregroundColor(Color(.label))
        })
        .padding(.trailing,3)
    }
}

struct PostHeaderView: View {
    
    var userImageName: String
    var imageName: String
    
    var body: some View {
        HStack {
            
            // user profile picture and username
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50,height: 50,alignment: .center)
                .background(Color.blue)
                .cornerRadius(45)
                .padding(3)
            
            Text(userImageName)
                .foregroundColor(.blue)
                .bold()
            
            
            Spacer()
            
        }
        .padding(20)
    }
}
