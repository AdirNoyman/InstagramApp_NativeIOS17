//
//  ContentView.swift
//  InstagramApp
//
//  Created by Adir Noyman on 13/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            HomeFeedView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ExploreView()
                .tabItem {
                    Image(systemName:"binoculars")
                    Text("Explore")
                }
            CameraView()
                .tabItem {
                    Image(systemName: "camera")
                    Text("Camera")
                }
            NotificationView()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notification")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
