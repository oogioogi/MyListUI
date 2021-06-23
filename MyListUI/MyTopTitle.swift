//
//  MyTopTitle.swift
//  MyListUI
//
//  Created by 이용석 on 2021/06/23.
//

import SwiftUI

struct MyTopTitle: View {
    var body: some View {
        HStack{
//            Spacer()
//                .frame(width: 10)
            Image(systemName: "list.bullet")
                .font(.system(size: 40))
            Spacer()
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(.black)
                .overlay(
                    Image(systemName: "person.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                )
//            Spacer()
//                .frame(width: 10)
        }
    }
}

struct MyTopTitle_Previews: PreviewProvider {
    static var previews: some View {
        MyTopTitle()
    }
}
