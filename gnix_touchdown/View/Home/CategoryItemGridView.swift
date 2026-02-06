//
//  CategoryItemGridView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct CategoryItemGridView: View {
  
  // MARK: - Property
  let category:Category
  
  var body: some View {
    Button{
      
    }label: {
      HStack(alignment: .center,spacing: 6){
        Image(category.image)
          .renderingMode(.template)
          .resizable()
          .scaledToFit()
          .frame(width: 30,height: 30,alignment: .center)
          .foregroundColor(.gray)
        
        Text(category.name.uppercased())
          .fontWeight(.light)
          .foregroundColor(.gray)
        
        Spacer()
      }
      .padding()
      .background(Color.white.cornerRadius(12))
      .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
    }
  }
}

#Preview {
  CategoryItemGridView(category: categories[0])
}
