//
//  FruitsApp.swift
//  Fruits
//
//  Created by narayan sharma on 07/01/22.
//

import SwiftUI

@main
struct FruitsApp: App {
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding{
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
