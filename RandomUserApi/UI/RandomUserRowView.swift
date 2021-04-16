//
//  RandomUserRowView.swift
//  RandomUserApi
//
//  Created by 박민규 on 2021/04/16.
//

import Foundation
import SwiftUI

struct RandomUserRowView : View {
    
    var randomUser : RandomUser
    
    init(_ randomUser : RandomUser) {
           self.randomUser = randomUser
       }
    
    var body: some View {
        HStack{
            
            ProfileImgView(imageUrl: randomUser.profileImgUrl)
            Text("\(randomUser.description)")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .lineLimit(2)
                .minimumScaleFactor(0.5) //Text를 Frame의 Size에 맞추어 그릴 때 minimumScaleFactor 사용
            
        }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 50, alignment: .leading).padding(.vertical)
    }
}



struct RandomUserRowView_Previews: PreviewProvider {
    static var previews: some View {
        RandomUserRowView(RandomUser.getDummy())
    }
}
