//
//  SettingsLableView.swift
//  Fruits
//
//  Created by narayan sharma on 09/01/22.
//

import SwiftUI

struct SettingsLableView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLableView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
