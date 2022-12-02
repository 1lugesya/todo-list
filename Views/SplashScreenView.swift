//
//  SplashScreenView.swift
//  toDoList
//
//  Created by Ayşegül Sarı on 2.12.2022.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "appIconImg")      /* IMG GORMUYOR !!! */
                    .font(.system(size: 80))
                    .foregroundColor(.red)
                Text("ToDo List is launching..")
                    .font(Font.custom("Bakerville-Bold", size: 26))
                    .foregroundColor(.black.opacity(0.7))
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.isActive = true
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
