//
//  FavoriteDetail.swift
//  MealAPI
//
//  Created by M. Abdul Latief -Mz on 21/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct FavoriteMealDetail: View {
  
  @Environment(\.managedObjectContext) var moc
  @FetchRequest(entity: FavoriteMeal.entity(), sortDescriptors: []) var favoriteMeal: FetchedResults<FavoriteMeal>
  
  let data: FavoriteMeal
  
    var body: some View {
      ScrollView{
        VStack(alignment: .leading){
          WebImage(url: URL(string: data.wrappedImage))
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipped()
          VStack(alignment: .leading,spacing: 20){
            Text(data.wrappedTitle)
              .font(.title)
              .fontWeight(.bold)
            
            Text(data.wrappedDesc)
              .font(.body)
            
          }.padding()
        }
      }
    }
}
