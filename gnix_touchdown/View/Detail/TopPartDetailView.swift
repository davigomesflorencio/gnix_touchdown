//
//  TopPartDetailView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct TopPartDetailView: View {
  
  @State private var isAnimating: Bool = false
  
    var body: some View {
      HStack(alignment: .center, spacing: 6){
        
        VStack(alignment: .leading,spacing: 6){
              Text("price")
            .fontWeight(.semibold)
          
          Text(mockProduct.formattedPrice)
            .font(.largeTitle)
            .fontWeight(.black)
            .scaleEffect(1.35,anchor: .leading)
        }
        .offset(y: isAnimating ? -50 : 75)
        
        Spacer()
        
        Image(mockProduct.image)
          .resizable()
          .scaledToFit()
          .offset(y:isAnimating ? 0 : -35)
      }
      .onAppear(perform: {
        withAnimation(.easeIn){
          isAnimating.toggle()
        }
      })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    TopPartDetailView()
    .padding()
    .background(.gray)
}
