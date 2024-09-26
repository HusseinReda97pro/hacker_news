//
//  ContentView.swift
//  hacker_news
//
//  Created by Hussein Reda on 26/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManger = NetworkManger()
    
    var body: some View {
        NavigationView {
            List (networkManger.posts){
                post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4XOR News")
        }
        .onAppear{
            self.networkManger.fetchData()
        }
    }
}

#Preview {
    ContentView()
}





