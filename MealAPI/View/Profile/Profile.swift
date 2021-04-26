//
//  Profile.swift
//  MealAPI
//
//  Created by M. Abdul Latief -Mz on 19/04/21.
//

import SwiftUI

struct Profile: View {
    var body: some View {
      ZStack{
        Image("catch")
          .resizable()
          .scaledToFill()
          .edgesIgnoringSafeArea(.all)
        
        VStack{
          Image("PROFILE")
            .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
          
          Text("M. Abdul Latief -Mz")
            .font(.title)
            .bold()
            .foregroundColor(.white)
            .padding(10)
            .background(Color.black)
            .opacity(0.6)
            .cornerRadius(5.0)
            .padding(.top, 16)
          Text("zayuka040104@gmail.com")
            .font(.body)
            .brightness(100)
            .opacity(0.6)
            .cornerRadius(5.0)
            .padding(.top, 16)
        }
      }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
