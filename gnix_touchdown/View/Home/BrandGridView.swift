//
//  BrandGridView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct BrandGridView: View {
  var body: some View {
    ScrollView(.horizontal,showsIndicators: false){
      LazyHGrid(rows: gridLayout, spacing: columnSpacing){
        ForEach(brands){brand in
          BrandItemGridView(brand: brand)
        }
      }
      .frame(height: 200)
      .padding(15)
    }
  }
}

#Preview {
  BrandGridView()
}
