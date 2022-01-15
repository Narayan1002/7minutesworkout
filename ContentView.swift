//
//  ContentView.swift
//  Fruits
//
//  Created by narayan sharma on 07/01/22.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    @State private var isSettings: Bool = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitsDetailView(fruit: item)){
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }
                    .sheet(isPresented: $isSettings){
                            SettingsView()
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
