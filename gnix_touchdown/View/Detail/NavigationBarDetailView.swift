//
//  NavigationBarDetailView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct NavigationBarDetailView: View {
  
  // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
  
    var body: some View {
      HStack{
        Button{
          withAnimation(.easeIn){
            feedback.impactOccurred()
            shop.selectedProduct =  nil
            shop.showProduct = false
          }
        }label: {
          Image(systemName: "chevron.left")
            .font(.title)
            .foregroundColor(.white)
        }
        
        Spacer()

        Button{
          
        }label: {
          Image(systemName: "cart")
            .font(.title)
            .foregroundColor(.white)
        }
      }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
  NavigationBarDetailView()
    .environmentObject(Shop())
    .padding()
    .background(.gray)
}
