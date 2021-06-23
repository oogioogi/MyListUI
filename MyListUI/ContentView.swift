//
//  ContentView.swift
//  MyListUI
//
//  Created by 이용석 on 2021/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(alignment: .leading, spacing: 0){
                
                MyTopTitle()
                    .padding(.horizontal, 20)
                    .padding(.top, 10)

                Text("전기쟁이 할일 목록")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                    .padding(.horizontal, 20)
                
                ScrollView{
                    VStack{
                        MyProjectCard()
                        MyBasicCard(imageName: "flame.fill", titleText: "유튭 라이브 버닝", startTime: "8", endTime: "10", bgColor: Color.purple)
                        MyBasicCard(imageName: "tv.fill", titleText: "영상 다시 보기", startTime: "8", endTime: "10", bgColor: Color.red)
                        MyBasicCard(imageName: "cart.fill", titleText: "마트 장보기", startTime: "8", endTime: "10", bgColor: Color.yellow)
                        MyBasicCard(imageName: "gamecontroller.fill", titleText: "히오스 한판 하기", startTime: "8", endTime: "10", bgColor: Color.blue)

                    }.padding()
                    
                }
            }
            //            .padding(.top, 20)
            //            .padding(.horizontal, 20)
            
            
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(.yellow)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                )
                .padding(10)
                .shadow(radius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
