//
//  StoriesView.swift
//  InstagramApp
//
//  Created by Adir Noyman on 13/01/2024.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false) {
            
            HStack {
                ForEach(0...10, id: \.self) { num in
                    StoryView(imageName: "lion")
                }
                
                
            }
            
        }
        
    }
    
}

struct StoryView: View {
    let imageName: String
    var body: some View {
        
        Image(imageName)
            .resizable()
            .frame(width: 90,height: 90,alignment: .center)
            .background(Color.blue)
            .cornerRadius(45)
            .padding(3)
    }
}


#Preview {
    StoriesView()
}