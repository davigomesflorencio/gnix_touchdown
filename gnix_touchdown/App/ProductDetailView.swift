//
//  ProductDetailView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct ProductDetailView: View {
  var body: some View {
    VStack(alignment: .leading,spacing: 5){
      
      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
      
      HeaderDetailView()
        .padding(.horizontal)
      
      TopPartDetailView()
        .padding(.horizontal)
        .zIndex(1)
      
      VStack(alignment: .center,spacing: 0){
        
        RatingSizesDetailView()
          .padding(.top,-20)
          .padding(.bottom,10)
        
        ScrollView(.vertical,showsIndicators: false){
          Text(mockProduct.description)
            .font(.system(.body,design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        }
        
        QuantityFavouriteDetailView()
          .padding(.vertical, 10)
        
        // ADD TO CART
        AddToCartDetailView()
          .padding(.bottom, 20)
      }
      .padding(.horizontal)
      .background(
        Color.white
          .clipShape(CustomShape())
          .padding(.top,-105)
      )
    
    }
    .zIndex(0)
    .ignoresSafeArea(.all,edges: .all)
    .background(Color(
      red: mockProduct.red,
      green:mockProduct.green,
      blue:mockProduct.blue)
    )
    .ignoresSafeArea(.all,edges: .all)
  }
}

#Preview {
  ProductDetailView()
}
