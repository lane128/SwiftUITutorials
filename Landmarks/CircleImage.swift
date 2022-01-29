//
//  CircleImage.swift
//  Landmarks
//
//  Created by Adam Wang on 2022/1/29.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("MyCat")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
