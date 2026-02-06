//
//  FeatureTabView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import SwiftUI

struct FeatureTabView: View {
  var body: some View {
    TabView{
      ForEach(players){player in
        FeatureItemTabView(player: player)
          .padding(.top,10)
          .padding(.horizontal,10)
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

#Preview {
  FeatureTabView()
}
