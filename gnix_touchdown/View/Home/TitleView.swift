//
//  TitleView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct TitleView: View {
  
  // MARK: - Properties
  var title:String
  
  var body: some View {
    HStack
    {
      Text(title)
        .font(.largeTitle)
        .fontWeight(.bold)
      
      Spacer()
    }
    .padding(.horizontal)
    .padding(.top,15)
    .padding(.bottom,10)
  }
}

#Preview {
  TitleView(title: "Helmet")
    .background(backGroundColor)
}
