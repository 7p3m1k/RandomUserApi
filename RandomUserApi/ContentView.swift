//
//  ContentView.swift
//  RandomUserApi
//
//  Created by 박민규 on 2021/04/16.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var randomUserViewModel =
        RandomUserViewModel()
    
    var body: some View {
        
        List(randomUserViewModel.randomUsers){ aRandomUser in
            RandomUserRowView(aRandomUser)
        }
        
//        List(0...100, id: \.self){ index in
//            RandomUserRowView()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
