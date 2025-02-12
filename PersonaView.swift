//
//  PersonaView.swift
//  AssetsChallenge5Game
//
//  Created by Cheyenne CHii Johnson on 2/5/25.
//

import SwiftUI


// Persona screen (without navigation bar)
struct Persona: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack {
            Image("DARK Background")
            
            HStack {
                Text("Persona")
                .frame(width: 110, height: 35)
                .foregroundStyle(.white)
                .background(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(.darkGray)
                .padding(.bottom, 275)
                .navigationBarBackButtonHidden(false)
                .navigationTransition(.automatic)
                
//                Button(action: {
//                }){
//                    Image("Female Button")
//                    frame(width: 110, height: 35)
//
//            }
//                
//            }
            
        }
    }
}
struct PersonaView_Previews: PreviewProvider {
    static var previews: some View {
        Persona()
    }
}
