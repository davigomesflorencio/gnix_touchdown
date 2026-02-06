//
//  Constant.swift
//  gnix_touchdown
//
//  Created by Davi Gomes Florencio on 05/02/26.
//

import Foundation

import SwiftUI

//Data

let players:[Player] = Bundle.main.decode("player.json")
let categories:[Category] = Bundle.main.decode("category.json")
let products:[Product] = Bundle.main.decode("product.json")
let brands:[Brand] = Bundle.main.decode("brand.json")
let mockPlayer = players[0]
let mockProduct = products[0]

//Color
let backGroundColor = Color("ColorBackground")
let colorGray = Color(UIColor.systemGray4)

//Layout

let columnSpacing:CGFloat = 10
let rowSpacing:CGFloat = 10
var gridLayout : [GridItem] = Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)

//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
