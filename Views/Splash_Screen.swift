//
//  Splash_Screen.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//

import SwiftUI

struct Splash_Screen: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        ZStack {
            if self.isActive {
                Main_View()
                
            } else {
                Color("Second_color")
                    .ignoresSafeArea()
                VStack {
                    
                    VStack {
                        Image("Logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                        
                        Text("TicPic")
                            .foregroundColor(Color("Background"))
                            .font(.headline)
           
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 2.6)) {
                            self.size = 1.9
                            self.opacity = 1.00
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    Splash_Screen()
}
