//
//  ContentView.swift
//  AssetsChallenge5Game
//
//  Created by Cheyenne CHii Johnson on 2/3/25.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    @State var saveData = SaveData(cash: 9999, wins: 0, levelSelected: 1, audioEnabled: true, hapticEnabled: true)
    @State private var path = NavigationPath()
        @State private var disableAnimation: Bool = true

        private var transaction: Transaction {
            var t = Transaction()
            t.disablesAnimations = disableAnimation
            return t
        }
    func setAudioMuted(_ mute: Bool) {}
    
    
    var body: some View {
        
        NavigationStack(path: $path.transaction(transaction)) {
            ZStack {
                
                Image("GreenCityBackground")
                
                HStack {
                    Button(action: {
                        saveData.audioEnabled.toggle() // Toggle audio state
                        
                        // Haptic feedback
                        let generator = UIImpactFeedbackGenerator(style: .medium)
                        generator.impactOccurred()
                        
                        // Mutes system audio
                        setAudioMuted(saveData.audioEnabled)
                        
                    }) {
                        Image(systemName: saveData.audioEnabled ? "speaker.wave.2.fill" : "speaker.slash")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .animation(.easeInOut, value: saveData.audioEnabled) // Transition animation
                    }
                    
                    Button(action: {
                        saveData.hapticEnabled.toggle() // Toggle haptic setting
                        if saveData.hapticEnabled {
                            let generator = UIImpactFeedbackGenerator(style: .medium)
                            generator.impactOccurred()
                        }
                        
                    }) {
                        Image(systemName: saveData.hapticEnabled ? "iphone.gen2.radiowaves.left.and.right" : "iphone.smartbatterycase.gen2")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .animation(.easeInOut, value: saveData.hapticEnabled)
                    }
                    
                    Spacer()
                    CashDisplay(cash: saveData.cash) // data save for cash display
                }
                .padding(.bottom, 300)
                .padding(.leading, 33)
                
                VStack {
                    Image("Detroit Punch Man Logo")
                        .padding(.top, 70)
                        .padding(.bottom, 20)
                    
                    // Button triggers screen navigation
                    Button(action: {
                    }){
                        Image("START Button")
    
                }
                    
                    // Button trigger game control screen
                    Button(action: {
                    }) {
                        Image("GAME CONTROLS Button")
                            .padding(.leading, 20)
                    }
                }
            }
        }
        
    }
}






//            .padding(.bottom, 270)
//            .padding(.leading, 33)



#Preview{
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

