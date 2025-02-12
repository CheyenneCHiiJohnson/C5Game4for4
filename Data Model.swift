//
//  Data Model.swift
//  AssetsChallenge5Game
//
//  Created by Cheyenne CHii Johnson on 2/4/25.
//

import Foundation
import SwiftUI
import SpriteKit

struct Armor {
    var name: String
    var armorID: Int
    var purchased: Bool
}

struct CharacterLoadout {
    var armorsEquipped: [Armor] = []
    var characterStyle: Int
    var ability: Int
}

struct SaveData {
    var cash: Int
    var wins: Int
    var levelProgression: Int = 1
//    var playerCharacter: CharacterLoadout
    var levelSelected: Int
    var armorsUnlocked: Int {
        get {
            return levelProgression
        }
    }
    var audioEnabled: Bool
    var hapticEnabled: Bool
}

struct Level {
    var enemy: Character
    var levelName: String
    var backgroundImage: Image
    var floorImage: Image
    var music: SKAudioNode
    var isCompleted: Bool
}

struct Character {
    var name: String
    var loadout: CharacterLoadout
    var headSprite: SKSpriteNode
    var bodySprite: SKSpriteNode
    var legSprite: SKSpriteNode
    var armSprites: SKSpriteNode
}

struct FightData {
    var currentLevel: Level
    
    var maxHealth: CGFloat = 100
    var playerHealth: CGFloat
    var enemyHealth: CGFloat
    var damageDealt: CGFloat {
        get {
            return maxHealth - enemyHealth
        }
    }
    var damageTaken: CGFloat {
        get {
            return maxHealth - playerHealth
        }
    }
    
    var playerWon: Bool {
        get {
            if enemyHealth <= 0 {
                return true
            } else { return false }
        }
    }
    
    var enemyWon: Bool {
        get {
            if playerHealth <= 0 {
                return true
            } else { return false }
        }
    }
    
    var abilityUsed: Bool
    var enemyAbilityUsed: Bool
    
    var matchLength: TimeInterval
    var currentMatchTime: TimeInterval
    var matchEndedTime: TimeInterval
    
    var fightLength: TimeInterval {
        get {
            return matchLength - matchEndedTime
        }
    }
    
    var timeExceeded: Bool {
        get {
            if currentMatchTime > matchLength {
                return true
            } else { return false }
        }
    }
}
