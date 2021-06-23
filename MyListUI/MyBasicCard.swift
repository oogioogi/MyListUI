//
//  MyBasicCard.swift
//  MyListUI
//
//  Created by 이용석 on 2021/06/23.
//

import SwiftUI

struct MyBasicCard: View {
    @State var imageName: String
    @State var titleText: String
    @State var startTime: String
    @State var endTime: String
    @State var bgColor: Color
    
    var body: some View {
        HStack(spacing: 20){
            Spacer()
                .frame(width: 10, height: 100)
            Image(systemName: imageName)
                //.frame(width: 50, height: 50)
                .foregroundColor(.white)
                .font(.system(size: 50))
            VStack(alignment:.leading, spacing: 0){
                Divider()
                    .frame(height: 0)
                    .opacity(0)
                Text(titleText)
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                    .fontWeight(.black)
                Spacer()
                    .frame(height: 5)
                Text("\(startTime) AM - \(endTime) PM")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 15))

            }

        }
        .background(bgColor)
        .cornerRadius(20.0)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        //MyBasicCard(imageName: "flame.fill", titleText: "유튭 라이브 버닝", timeText: "8 PM - 9 AM")
        MyBasicCard(imageName: "flame.fill", titleText: "유튭 라이브 버닝", startTime: "8", endTime: "10", bgColor: Color.purple)
    }
}
