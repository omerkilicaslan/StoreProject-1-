//
//  HomeView.swift
//  StoreProject-1-
//
//  Created by Ömer Faruk Kılıçaslan on 27.04.2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        ZStack {
            VStack(spacing: 0){
                Color.blue
                    .frame(height: 500)
                
                Color.red
                    .frame(height: 400)
            }
            .ignoresSafeArea()
            
            
            VStack(spacing: 0){
                Spacer()
                //Header Part
                VStack{
                    HStack(spacing: 15){
                        Image(systemName: "ellipsis.bubble")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                        
                        Text("QUIZ-AI")
                            .font(.system(size: 50, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .offset(x: 0, y: -6)
                    }
                    
                    
                    Text("Best Quiz Game You Have Ever Seen!")
                        .font(.system(size: 10, weight: .regular, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.leading, 100)
                        .offset(x: 0, y: -25)
                }
                
                Spacer()
                //Center Part
                VStack{
                    NavigationLink {
                           QuizView()
                    } label: {
                        Image(systemName: "arrow.right")
                            .resizable()
                            .frame(width: 50, height: 35)
                            .foregroundColor(.white)
                            .frame(width: 80, height: 50)
                            .background(.blue)
                            .cornerRadius(24)
                            
                    }

                }
                
                Spacer()
                //Footer Part
                VStack{
                    
                }
                    
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
