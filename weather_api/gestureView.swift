//
//  gestureView.swift
//  Hw5
//
//  Created by User20 on 2020/6/12.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import SwiftUI

struct gestureView: View {
    @State private var scale: CGFloat = 1
    @State private var newScale: CGFloat = 1
    @State private var show = false
    var body: some View {
        VStack {
                Image("Taipei")
        .resizable()
        .scaledToFill()
        .frame(width: 200, height: 200)
        .clipped()
        .transition(.scale)
        .scaleEffect(scale)
        .gesture(MagnificationGesture()
        .onChanged { value in
        self.scale = self.newScale * value.magnitude
        }.onEnded { value in
        self.newScale = self.scale
            
    })
           
        }

    }
   }

struct gestureView_Previews: PreviewProvider {
    static var previews: some View {
        gestureView()
    }
}
