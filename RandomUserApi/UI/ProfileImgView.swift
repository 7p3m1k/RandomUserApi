//
//  ProfileImgView.swift
//  RandomUserApi
//
//  Created by 박민규 on 2021/04/16.
//

import Foundation
import SwiftUI
import URLImage


struct ProfileImgView : View {
    
    var imageUrl: URL
    
    var body: some View {

        URLImage(url: imageUrl,
                 content: { image in
                     image
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                 })
            .frame(width: 50, height: 60)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/) //view를 동그랗게 만들겠다
            .overlay(Circle().stroke(Color.init(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)),
                                     lineWidth: 2))
    }
}


struct ProfileImgView_Previews: PreviewProvider {
    static var previews: some View {
        
        let url = URL(string: "https://randomuser.me/api/portraits/women/56.jpg")!
        
        ProfileImgView(imageUrl: url)
    }
}
