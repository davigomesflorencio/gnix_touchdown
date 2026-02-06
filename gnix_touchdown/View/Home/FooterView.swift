//
//  FooterView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
      VStack(alignment: .center,spacing: 10){
        Text("We offet the most cutting edge, confortable, lightweight and durable  football helmeets in the market at affordable prices.")
          .foregroundColor(.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(2)
        
        Image("logo-lineal")
          .renderingMode(.template)
          .foregroundColor(.gray)
          .layoutPriority(0)
        
        Text("Copyrght Davi Gomes Florencio\n All right reserved")
          .font(.footnote)
          .foregroundColor(.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(1)
      }
    }
}

#Preview {
    FooterView()
}
