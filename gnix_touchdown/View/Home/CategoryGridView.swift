//
//  CategoryGridView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
      ScrollView(.horizontal,showsIndicators: false){
        LazyHGrid(rows: gridLayout){
          Section(
            header: SectionView(rotateClockWise: false),
            footer: SectionView(rotateClockWise: true),
          ){
            ForEach(categories){category in
              CategoryItemGridView(category: category)
            }
          }
        }
        .frame(height: 140)
        .padding(.horizontal,15)
        .padding(.vertical,10)
      }
    }
}

#Preview {
    CategoryGridView()
}
