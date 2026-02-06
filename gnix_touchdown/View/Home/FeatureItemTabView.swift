//
//  FeatureItemTabView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct FeatureItemTabView: View {
  
  let player: Player
  
  var body: some View {
    Image(player.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}

#Preview {
  FeatureItemTabView(player: mockPlayer)
}
