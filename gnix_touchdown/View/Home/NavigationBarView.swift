//
//  SwiftUIView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct NavigationBarView: View {
  
  // MARK: - Property
  
  @State private var isAnimating: Bool = false
  
  var body: some View {
    HStack{
      Button(){
        
      }label:{
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundColor(.black)
      }
      
      Spacer()
      
      LogoView()
        .opacity(isAnimating ? 1 : 0)
        .offset(x:0 ,y :isAnimating ? 0 :  -25)
        .onAppear{
          withAnimation(.easeOut(duration: 0.5)){
            isAnimating.toggle()
          }
        }
      
      Spacer()
      
      Button(
        action: {},
        label: {
          ZStack{
            Image(systemName: "cart")
              .font(.title)
              .foregroundColor(.black)
            
            Circle()
              .fill(Color.red)
              .frame(width: 14,height: 14,alignment: .center)
              .offset(x: 12,y: -10)
          }
        }
      )
    }
  }
}

#Preview {
  NavigationBarView()
}
