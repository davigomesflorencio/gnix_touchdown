//
//  CustomShape.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct CustomShape: Shape {
  func path(in rect: CGRect) -> Path {
      let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
      
      return Path(path.cgPath)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CustomShape()
    .previewLayout(.fixed(width: 428, height: 128))
    .padding()
}
