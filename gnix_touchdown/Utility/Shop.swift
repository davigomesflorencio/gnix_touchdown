//
//  SwiftUIView.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import Foundation
import Combine

class Shop: ObservableObject {
  
  @Published var showProduct:Bool = false
  @Published var selectedProduct:Product?
}
