//
//  CustomButtonView.swift
//  CapFun
//
//  Created by Everton Buzzi on 08/10/2023.
//

import SwiftUI

struct CustomButtonView: View {
    var title: String
    var color: Color
    var body: some View {
        Text(title)
            .font (.headline)
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
    }
}

#Preview {
    CustomButtonView(title: "Tap Me", color: .red)
}
