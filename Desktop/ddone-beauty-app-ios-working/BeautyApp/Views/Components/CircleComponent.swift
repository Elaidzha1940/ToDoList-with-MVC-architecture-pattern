//
//  CircleComponents.swift
//  BeautyApp
//
//  Created by Elaidzha Shchukin on 21.10.2022.
//

import SwiftUI

struct CircleComponent: View {
    
    var body: some View {
         
        VStack {
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 169, height: 169)
                        .foregroundColor(Color.elements(.bright))
                    Image("Nail")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 99, height: 99)
                }
                ZStack {
                    Circle()
                        .frame(width: 169, height: 169)
                        .foregroundColor(Color.elements(.bright))
                    Image("SpeechBaloon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 99, height: 101 )
                }
                ZStack {
                    Circle()
                        .frame(width: 169, height: 169)
                        .foregroundColor(Color.elements(.bright))
                    Image("LoudSpeaker")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                }
            }
        }
    }
}

struct CircleComponent_Previews: PreviewProvider {
    static var previews: some View {
        CircleComponent()
    }
}
