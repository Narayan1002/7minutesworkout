//
//  FruitsDetailView.swift
//  Fruits
//
//  Created by narayan sharma on 08/01/22.
//

import SwiftUI

struct FruitsDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    VStack(alignment: .leading, spacing: 20){
                        
                        FruitHeaderView(fruit: fruit)
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("learn more about\(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 14)
                    }
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailView(fruit: fruitsData[0])
    }
}
