//
//  CircleButtonView.swift
//  StopWatchInterface
//
//  Created by calum couch on 2022-11-15.
//

import SwiftUI

struct CircleButtonView: View {
    // MARK: Stored properties
    let buttonColor: Color
    let lable: String
    let labelColor: Color
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            
            
            
            Circle()
            
                .foregroundColor(buttonColor)
                .frame(width: 100)
            
            
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 89)
            
            
            Text(lable)
                .foregroundColor(labelColor)
                .font(.title2)
        }
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView(buttonColor: .gray, lable: "Reset", labelColor: .white)
    }
}
