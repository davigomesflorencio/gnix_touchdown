//
//  HeaderDetailView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct HeaderDetailView: View {
  var body: some View {
    VStack(alignment: .center,spacing: 6){
      Text("Protective gear")
      
      Text(mockProduct.name)
        .font(.largeTitle)
        .fontWeight(.black)
    }
    .foregroundColor(.white)
  }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailView()
    .padding()
    .background(.gray)
}
