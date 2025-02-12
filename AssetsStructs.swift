//
//  AssetsStructs.swift
//  AssetsChallenge5Game
//
//  Created by Cheyenne CHii Johnson on 2/4/25.
//
import SpriteKit
import SwiftUI
import GameKit


struct CashDisplay: View {
    var cash: Int = 0
    
    var body: some View {
        ZStack {
            Image("CASH DISPLAY")
                .padding(.trailing, 33)
            Text("\(cash)")
                .font(Font.custom( "AvenirNext-Regular", size: 24))
                .foregroundColor(.white)
                .padding(.leading, 5)
        }
    }
    mutating func setCash(_ newNumber: Int) {
        cash = newNumber
    }
}

