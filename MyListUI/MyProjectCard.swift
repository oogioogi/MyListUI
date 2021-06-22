//
//  MyProjectCard.swift
//  MyListUI
//
//  Created by 이용석 on 2021/06/22.
//

import SwiftUI

struct MyProjectCard: View {
    var body: some View {
        VStack(alignment:.leading, spacing: 0){
//            Rectangle()
//                .frame(height: 0)
            Text("조선소 전기쟁이 프로젝트")
                .font(.system(size: 28))
                .fontWeight(.black)
                .padding(.bottom, 5)

            Text("10시 - 11시")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .font(.system(size: 15))
                .padding(.bottom, 10)
            
            HStack{
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .background(Color.gray)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 5.0)
                    )
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray)
                    .clipShape(Circle())
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray)
                    .clipShape(Circle())
                Spacer()
                Button(action: {}, label: {
                    Text("확인")
                        .fontWeight(.bold)
                        .frame(width: 70, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10.0)
                        //.offset(x: 40, y: 0)
                })
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20.0)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
