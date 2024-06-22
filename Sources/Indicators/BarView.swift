//
//  BarView.swift
//  ActivityIndicatorView
//
//  Created by Daniil Manin on 16.09.2021.
//  Copyright © 2021 Exyte. All rights reserved.
//

struct BarView: View {
    @Binding var progress: CGFloat
    let backgroundColor: Color
    let foregroundColor: Color = .red  // 這裡設置預設的前景色為紅色

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Capsule()
                    .foregroundColor(backgroundColor)
                Capsule()
                    .foregroundColor(foregroundColor)  // 使用指定的前景色
                    .frame(width: min(max(geometry.size.width * progress, 0), geometry.size.width))
                    .animation(.easeIn, value: progress)
            }
        }
    }
}
