//
//  ContentView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//MARK

import SwiftUI

struct ContentView: View {
  
  // MARK: - Properties
  
  var body: some View {
    ZStack {
      VStack(spacing: 0) {
        NavigationBarView()
          .padding(.horizontal,15)
          .padding(.bottom)
          .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
          .background(Color.white)
          .shadow(color: Color.black.opacity(0.15), radius: 5,x: 0,y: 5)
        
        ScrollView(.vertical,showsIndicators: false){
          VStack(spacing: 0){
              FeatureTabView()
              .frame(height: UIScreen.main.bounds.width/1.475).padding(.vertical,10)
              
            CategoryGridView()
            
            TitleView(title: "Helmets")
            
            LazyVGrid(columns: gridLayout,spacing: 15){
              ForEach(products){product in
                  ProductItemView(product: product)
                  .onTapGesture {
                    feedback.impactOccurred()
                    
                    withAnimation(.easeOut){
                        
                    }
                  }
              }
            }
            .padding(15)
            
            TitleView(title: "Brands")
            
            BrandGridView()
          
            FooterView()
              .padding(.horizontal)
          }
        }
      }
      .background(backGroundColor.ignoresSafeArea(.all,edges:.all))
      // VStack
    }
    .ignoresSafeArea(.all,edges: .top)
  }
}

#Preview {
  ContentView()
}
