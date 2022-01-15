//
//  OnBoardingView.swift
//  Fruits
//
//  Created by narayan sharma on 08/01/22.
//

import SwiftUI

struct OnBoardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
               FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
