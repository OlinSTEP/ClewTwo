//
//  HomeView.swift
//  ClewTwo
//
//  Created by Evelyn on 4/1/23.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var currentLocationAddress = "1000 Olin Way"
    
    var body: some View {
            NavigationView {
                Text("")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                print("Home")
                            }) {
                                Label("Home", systemImage: "house")
                            }
                        }
                        ToolbarItem(placement: .principal) {
                            Button(action: {
                                print("Tapped navigate")
                            }) {
                                Text("Navigate")
                                    .overlay(
                                    Capsule()
                                        .stroke(lineWidth: 3)
                                        .frame(width: 140, height: 30))
                            }
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                print("Settings")
                            }) {
                                Label("Settings", systemImage: "gearshape.fill")
                            }
                        }
                    }
                    .navigationTitle(currentLocationAddress)
            }
            .searchable(text: $searchText, prompt: "Search")
            .frame(height: 160)
 
        VStack{
            Text("My Anchor Groups")
                .font(.title)
            List {
                Button("Bus Stop", action: {
                    print("Pressed Bus Stop")
                })
                Button("Bathroom", action: {
                    print("Pressed Bathroom")
                })
                Button("Front Door", action: {
                    print("Pressed Front Door")
                })
            }
        }
        
        Spacer()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
