//
//  Item.swift
//  AssetsChallenge5Game
//
//  Created by Cheyenne CHii Johnson on 2/3/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
