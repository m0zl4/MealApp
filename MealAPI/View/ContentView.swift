//
//  ContentView.swift
//  MealAPI
//
//  Created by M. Abdul Latief -Mz on 16/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      TabView{
        MealList()
          .tabItem{
            Image(systemName: "house.fill")
            Text("Meal")
          }
        
        SearchList()
          .tabItem{
            Image(systemName: "magnifyingglass")
            Text("Search")
          }
        
        FavoriteMealList()
          .tabItem{
            Image(systemName: "heart.fill")
            Text("Favorite")
          }
        
        Profile()
          .tabItem{
            Image(systemName: "person.fill")
            Text("About")
          }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
