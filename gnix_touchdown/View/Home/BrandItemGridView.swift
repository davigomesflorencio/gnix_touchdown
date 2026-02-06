//
//  BrandItemGridView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct BrandItemGridView: View {
  // MARK: - property
  let brand:Brand
  
  // MARK: - Body
  var body: some View {
    Image(brand.image)
      .resizable()
      .scaledToFit()
      .padding(3)
      .background(Color.white.cornerRadius(12))
      .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
  }
}

#Preview {
  BrandItemGridView(brand: brands[0])
}
